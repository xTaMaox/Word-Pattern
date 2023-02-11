defmodule Solution do
  @spec word_pattern(pattern :: String.t, s :: String.t) :: boolean
  def word_pattern(pattern, s) do
    pattern_to_list = pattern |> String.graphemes()
    s_to_list = s |> String.split(" ", trim: true)

    uniq_pattern = pattern_to_list |> Enum.uniq()
    uniq_s = s_to_list |> Enum.uniq()

    sorted_size =
    [uniq_pattern |> length(),
    uniq_s |> length(),
    Enum.zip(pattern_to_list, s_to_list) |> Enum.uniq() |> length()]

    pattern_to_list |> length() == s_to_list |> length() and (sorted_size |> Enum.uniq() |> length() == 1)

  end
end

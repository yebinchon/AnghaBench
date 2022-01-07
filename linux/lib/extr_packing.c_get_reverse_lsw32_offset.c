
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int get_reverse_lsw32_offset(int offset, size_t len)
{
 int closest_multiple_of_4;
 int word_index;

 word_index = offset / 4;
 closest_multiple_of_4 = word_index * 4;
 offset -= closest_multiple_of_4;
 word_index = (len / 4) - word_index - 1;
 return word_index * 4 + offset;
}

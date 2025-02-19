
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int find_next_bit_le (void const*,int,int) ;
 int find_next_zero_bit_le (void const*,int,int) ;

int f2fs_room_for_filename(const void *bitmap, int slots, int max_slots)
{
 int bit_start = 0;
 int zero_start, zero_end;
next:
 zero_start = find_next_zero_bit_le(bitmap, max_slots, bit_start);
 if (zero_start >= max_slots)
  return max_slots;

 zero_end = find_next_bit_le(bitmap, max_slots, zero_start);
 if (zero_end - zero_start >= slots)
  return zero_start;

 bit_start = zero_end + 1;

 if (zero_end + 1 >= max_slots)
  return max_slots;
 goto next;
}

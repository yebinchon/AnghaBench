
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;



__attribute__((used)) static void btf_int128_shift(u64 *print_num, u16 left_shift_bits,
        u16 right_shift_bits)
{
 u64 upper_num, lower_num;





 upper_num = print_num[1];
 lower_num = print_num[0];



 if (left_shift_bits >= 64) {
  upper_num = lower_num << (left_shift_bits - 64);
  lower_num = 0;
 } else {
  upper_num = (upper_num << left_shift_bits) |
       (lower_num >> (64 - left_shift_bits));
  lower_num = lower_num << left_shift_bits;
 }

 if (right_shift_bits >= 64) {
  lower_num = upper_num >> (right_shift_bits - 64);
  upper_num = 0;
 } else {
  lower_num = (lower_num >> right_shift_bits) |
       (upper_num << (64 - right_shift_bits));
  upper_num = upper_num >> right_shift_bits;
 }





 print_num[0] = lower_num;
 print_num[1] = upper_num;

}

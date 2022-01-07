
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int GENMASK_ULL (int,int) ;
 int bit_reverse (int,int) ;

__attribute__((used)) static void adjust_for_msb_right_quirk(u64 *to_write, int *box_start_bit,
           int *box_end_bit, u8 *box_mask)
{
 int box_bit_width = *box_start_bit - *box_end_bit + 1;
 int new_box_start_bit, new_box_end_bit;

 *to_write >>= *box_end_bit;
 *to_write = bit_reverse(*to_write, box_bit_width);
 *to_write <<= *box_end_bit;

 new_box_end_bit = box_bit_width - *box_start_bit - 1;
 new_box_start_bit = box_bit_width - *box_end_bit - 1;
 *box_mask = GENMASK_ULL(new_box_start_bit, new_box_end_bit);
 *box_start_bit = new_box_start_bit;
 *box_end_bit = new_box_end_bit;
}

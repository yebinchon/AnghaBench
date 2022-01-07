
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int bcm2835_i2s_convert_slot (scalar_t__,unsigned int) ;
 scalar_t__ ffs (unsigned int) ;
 scalar_t__ fls (unsigned int) ;

__attribute__((used)) static void bcm2835_i2s_calc_channel_pos(
 unsigned int *ch1_pos, unsigned int *ch2_pos,
 unsigned int mask, unsigned int width,
 unsigned int bit_offset, unsigned int odd_offset)
{
 *ch1_pos = bcm2835_i2s_convert_slot((ffs(mask) - 1), odd_offset)
   * width + bit_offset;
 *ch2_pos = bcm2835_i2s_convert_slot((fls(mask) - 1), odd_offset)
   * width + bit_offset;
}

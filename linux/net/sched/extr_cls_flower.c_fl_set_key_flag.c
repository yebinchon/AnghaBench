
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static void fl_set_key_flag(u32 flower_key, u32 flower_mask,
       u32 *dissector_key, u32 *dissector_mask,
       u32 flower_flag_bit, u32 dissector_flag_bit)
{
 if (flower_mask & flower_flag_bit) {
  *dissector_mask |= dissector_flag_bit;
  if (flower_key & flower_flag_bit)
   *dissector_key |= dissector_flag_bit;
 }
}

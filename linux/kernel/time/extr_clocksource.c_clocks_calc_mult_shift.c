
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;

void
clocks_calc_mult_shift(u32 *mult, u32 *shift, u32 from, u32 to, u32 maxsec)
{
 u64 tmp;
 u32 sft, sftacc= 32;





 tmp = ((u64)maxsec * from) >> 32;
 while (tmp) {
  tmp >>=1;
  sftacc--;
 }





 for (sft = 32; sft > 0; sft--) {
  tmp = (u64) to << sft;
  tmp += from / 2;
  do_div(tmp, from);
  if ((tmp >> sftacc) == 0)
   break;
 }
 *mult = tmp;
 *shift = sft;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef int ktime_t ;


 int do_div (int,unsigned long) ;
 int ktime_to_ns (int const) ;

s64 __ktime_divns(const ktime_t kt, s64 div)
{
 int sft = 0;
 s64 dclc;
 u64 tmp;

 dclc = ktime_to_ns(kt);
 tmp = dclc < 0 ? -dclc : dclc;


 while (div >> 32) {
  sft++;
  div >>= 1;
 }
 tmp >>= sft;
 do_div(tmp, (unsigned long) div);
 return dclc < 0 ? -tmp : tmp;
}

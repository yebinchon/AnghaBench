
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int do_div (int,int) ;
 int vol_shift_64 (int,int) ;

__attribute__((used)) static u32 vol_pow32(u32 a, int exp, u32 fwl)
{
 int i, iter;
 u32 power = 1 << fwl;
 u64 numerator;


 if (exp == 0)
  return power;


 if (exp < 0)
  iter = exp * -1;
 else
  iter = exp;


 for (i = 0; i < iter; i++) {




  power = vol_shift_64((u64)power * a, fwl);
 }

 if (exp > 0) {

  return power;
 }


 numerator = (u64)1 << (fwl << 1);
 do_div(numerator, power);

 return (u32)numerator;
}

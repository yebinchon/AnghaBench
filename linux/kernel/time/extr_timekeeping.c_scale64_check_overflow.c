
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int EOVERFLOW ;
 int div64_u64_rem (int ,int ,int *) ;
 int do_div (int ,int ) ;
 scalar_t__ fls64 (int ) ;

__attribute__((used)) static int scale64_check_overflow(u64 mult, u64 div, u64 *base)
{
 u64 tmp, rem;

 tmp = div64_u64_rem(*base, div, &rem);

 if (((int)sizeof(u64)*8 - fls64(mult) < fls64(tmp)) ||
     ((int)sizeof(u64)*8 - fls64(mult) < fls64(rem)))
  return -EOVERFLOW;
 tmp *= mult;
 rem *= mult;

 do_div(rem, div);
 *base = tmp + rem;
 return 0;
}

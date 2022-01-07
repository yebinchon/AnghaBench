
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int __iter_div_u64_rem (int ,int ,int *) ;

u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
{
 return __iter_div_u64_rem(dividend, divisor, remainder);
}

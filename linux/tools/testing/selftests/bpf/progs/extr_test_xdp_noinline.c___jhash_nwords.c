
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 int __jhash_final (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static __attribute__ ((noinline))
u32 __jhash_nwords(u32 a, u32 b, u32 c, u32 initval)
{
 a += initval;
 b += initval;
 c += initval;
 __jhash_final(a, b, c);
 return c;
}

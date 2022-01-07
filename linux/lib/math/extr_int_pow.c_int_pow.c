
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



u64 int_pow(u64 base, unsigned int exp)
{
 u64 result = 1;

 while (exp) {
  if (exp & 1)
   result *= base;
  exp >>= 1;
  base *= base;
 }

 return result;
}

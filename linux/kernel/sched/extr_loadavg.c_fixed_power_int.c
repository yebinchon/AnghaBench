
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long
fixed_power_int(unsigned long x, unsigned int frac_bits, unsigned int n)
{
 unsigned long result = 1UL << frac_bits;

 if (n) {
  for (;;) {
   if (n & 1) {
    result *= x;
    result += 1UL << (frac_bits - 1);
    result >>= frac_bits;
   }
   n >>= 1;
   if (!n)
    break;
   x *= x;
   x += 1UL << (frac_bits - 1);
   x >>= frac_bits;
  }
 }

 return result;
}

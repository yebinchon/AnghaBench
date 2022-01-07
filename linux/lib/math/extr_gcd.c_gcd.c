
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __ffs (unsigned long) ;
 int swap (unsigned long,unsigned long) ;

unsigned long gcd(unsigned long a, unsigned long b)
{
 unsigned long r = a | b;

 if (!a || !b)
  return r;

 b >>= __ffs(b);
 if (b == 1)
  return r & -r;

 for (;;) {
  a >>= __ffs(a);
  if (a == 1)
   return r & -r;
  if (a == b)
   return a << __ffs(r);

  if (a < b)
   swap(a, b);
  a -= b;
 }
}

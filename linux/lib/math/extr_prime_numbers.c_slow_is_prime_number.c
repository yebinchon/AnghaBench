
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long int_sqrt (unsigned long) ;

__attribute__((used)) static bool slow_is_prime_number(unsigned long x)
{
 unsigned long y = int_sqrt(x);

 while (y > 1) {
  if ((x % y) == 0)
   break;
  y--;
 }

 return y == 1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long gcd (unsigned long,unsigned long) ;

unsigned long lcm(unsigned long a, unsigned long b)
{
 if (a && b)
  return (a / gcd(a, b)) * b;
 else
  return 0;
}

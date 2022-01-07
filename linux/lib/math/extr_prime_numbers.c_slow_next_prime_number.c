
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long ULONG_MAX ;
 int slow_is_prime_number (unsigned long) ;

__attribute__((used)) static unsigned long slow_next_prime_number(unsigned long x)
{
 while (x < ULONG_MAX && !slow_is_prime_number(++x))
  ;

 return x;
}

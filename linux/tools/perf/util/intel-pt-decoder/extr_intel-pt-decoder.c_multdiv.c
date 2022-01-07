
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;



__attribute__((used)) static uint64_t multdiv(uint64_t t, uint32_t n, uint32_t d)
{
 if (!d)
  return 0;
 return (t / d) * n + ((t % d) * n) / d;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long long rdtsc(void)
{
 unsigned int low, high;

 asm volatile("rdtsc" : "=a" (low), "=d" (high));

 return low | ((unsigned long long)high) << 32;
}

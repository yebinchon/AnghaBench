
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



u64 rdtsc(void)
{
 unsigned int low, high;

 asm volatile("rdtsc" : "=a" (low), "=d" (high));

 return low | ((u64)high) << 32;
}

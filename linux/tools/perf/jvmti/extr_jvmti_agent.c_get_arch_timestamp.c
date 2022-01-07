
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static inline uint64_t
get_arch_timestamp(void)
{

 unsigned int low, high;

 asm volatile("rdtsc" : "=a" (low), "=d" (high));

 return low | ((uint64_t)high) << 32;



}

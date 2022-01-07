
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;



__attribute__((used)) static u64 rdpmc(unsigned int counter)
{
 unsigned int low, high;

 asm volatile("rdpmc" : "=a" (low), "=d" (high) : "c" (counter));

 return low | ((u64)high) << 32;
}

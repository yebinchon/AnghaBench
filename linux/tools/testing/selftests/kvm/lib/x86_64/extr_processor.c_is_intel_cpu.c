
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



bool is_intel_cpu(void)
{
 int eax, ebx, ecx, edx;
 const uint32_t *chunk;
 const int leaf = 0;

 __asm__ __volatile__(
  "cpuid"
  : "=a"(eax), "=b"(ebx),
    "=c"(ecx), "=d"(edx)
  : "0"(leaf), "2"(0));

 chunk = (const uint32_t *)("GenuineIntel");
 return (ebx == chunk[0] && edx == chunk[1] && ecx == chunk[2]);
}

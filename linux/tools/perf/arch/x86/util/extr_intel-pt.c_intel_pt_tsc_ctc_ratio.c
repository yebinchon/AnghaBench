
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;


 int __get_cpuid (int,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;

__attribute__((used)) static void intel_pt_tsc_ctc_ratio(u32 *n, u32 *d)
{
 unsigned int eax = 0, ebx = 0, ecx = 0, edx = 0;

 __get_cpuid(0x15, &eax, &ebx, &ecx, &edx);
 *n = ebx;
 *d = eax;
}

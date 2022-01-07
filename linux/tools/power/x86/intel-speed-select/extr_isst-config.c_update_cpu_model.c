
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpuid (int,unsigned int,unsigned int,unsigned int,unsigned int) ;
 unsigned int cpu_model ;

__attribute__((used)) static void update_cpu_model(void)
{
 unsigned int ebx, ecx, edx;
 unsigned int fms, family;

 __cpuid(1, fms, ebx, ecx, edx);
 family = (fms >> 8) & 0xf;
 cpu_model = (fms >> 4) & 0xf;
 if (family == 6 || family == 0xf)
  cpu_model += ((fms >> 16) & 0xf) << 4;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; } ;


 int CPUPOWER_CAP_PERF_BIAS ;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 TYPE_1__ cpupower_cpu_info ;
 int write_msr (unsigned int,int ,unsigned int) ;

int msr_intel_set_perf_bias(unsigned int cpu, unsigned int val)
{
 int ret;

 if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_PERF_BIAS))
  return -1;

 ret = write_msr(cpu, MSR_IA32_ENERGY_PERF_BIAS, val);
 if (ret)
  return ret;
 return 0;
}

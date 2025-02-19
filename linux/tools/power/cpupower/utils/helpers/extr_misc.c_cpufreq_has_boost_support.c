
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpupower_cpu_info {int family; } ;
struct TYPE_2__ {int caps; } ;


 unsigned long long CPUPOWER_AMD_CPBDIS ;
 int CPUPOWER_CAP_AMD_CBP ;
 int CPUPOWER_CAP_INTEL_IDA ;
 int MSR_AMD_HWCR ;
 int amd_pci_get_num_boost_states (int*,int*) ;
 TYPE_1__ cpupower_cpu_info ;
 int get_cpu_info (struct cpupower_cpu_info*) ;
 int read_msr (unsigned int,int ,unsigned long long*) ;

int cpufreq_has_boost_support(unsigned int cpu, int *support, int *active,
   int *states)
{
 struct cpupower_cpu_info cpu_info;
 int ret;
 unsigned long long val;

 *support = *active = *states = 0;

 ret = get_cpu_info(&cpu_info);
 if (ret)
  return ret;

 if (cpupower_cpu_info.caps & CPUPOWER_CAP_AMD_CBP) {
  *support = 1;






  if (cpu_info.family == 0x17 || cpu_info.family == 0x18) {
   if (!read_msr(cpu, MSR_AMD_HWCR, &val)) {
    if (!(val & CPUPOWER_AMD_CPBDIS))
     *active = 1;
   }
  } else {
   ret = amd_pci_get_num_boost_states(active, states);
   if (ret)
    return ret;
  }
 } else if (cpupower_cpu_info.caps & CPUPOWER_CAP_INTEL_IDA)
  *support = *active = 1;
 return 0;
}

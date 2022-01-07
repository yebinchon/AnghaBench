
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int caps; scalar_t__ vendor; } ;


 int CPUPOWER_CAP_INV_TSC ;
 int MAX_FREQ_SYSFS ;
 int MAX_FREQ_TSC_REF ;
 int MSR_AMD_HWCR ;
 scalar_t__ X86_VENDOR_AMD ;
 scalar_t__ X86_VENDOR_HYGON ;
 scalar_t__ X86_VENDOR_INTEL ;
 scalar_t__ cpufreq_get_hardware_limits (int ,unsigned long*,int*) ;
 TYPE_1__ cpupower_cpu_info ;
 int dprint (char*,...) ;
 int max_freq_mode ;
 int max_frequency ;
 int read_msr (int ,int ,unsigned long long*) ;

__attribute__((used)) static int init_maxfreq_mode(void)
{
 int ret;
 unsigned long long hwcr;
 unsigned long min;

 if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_INV_TSC))
  goto use_sysfs;

 if (cpupower_cpu_info.vendor == X86_VENDOR_AMD ||
     cpupower_cpu_info.vendor == X86_VENDOR_HYGON) {
  ret = read_msr(0, MSR_AMD_HWCR, &hwcr);




  if (ret != 0) {
   dprint("TSC read 0x%x failed - assume TSC working\n",
          MSR_AMD_HWCR);
   return 0;
  } else if (1 & (hwcr >> 24)) {
   max_freq_mode = MAX_FREQ_TSC_REF;
   return 0;
  } else { }
 } else if (cpupower_cpu_info.vendor == X86_VENDOR_INTEL) {




  max_freq_mode = MAX_FREQ_TSC_REF;
  return 0;
 }
use_sysfs:
 if (cpufreq_get_hardware_limits(0, &min, &max_frequency)) {
  dprint("Cannot retrieve max freq from cpufreq kernel "
         "subsystem\n");
  return -1;
 }
 max_freq_mode = MAX_FREQ_SYSFS;
 max_frequency /= 1000;
 return 0;
}

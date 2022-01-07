
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSR_IA32_ENERGY_PERF_BIAS ;
 int MSR_IA32_MISC_ENABLE ;
 unsigned long long MSR_IA32_MISC_ENABLE_TURBO_DISABLE ;
 int get_msr (int,int ,unsigned long long*) ;
 int has_hwp ;
 int hwp_update_enabled () ;
 unsigned long long new_epb ;
 int printf (char*,int,...) ;
 int put_msr (int,int ,unsigned long long) ;
 int turbo_update_value ;
 scalar_t__ update_epb ;
 int update_hwp_request (int) ;
 scalar_t__ update_turbo ;
 scalar_t__ verbose ;

int update_cpu_msrs(int cpu)
{
 unsigned long long msr;


 if (update_epb) {
  get_msr(cpu, MSR_IA32_ENERGY_PERF_BIAS, &msr);
  put_msr(cpu, MSR_IA32_ENERGY_PERF_BIAS, new_epb);

  if (verbose)
   printf("cpu%d: ENERGY_PERF_BIAS old: %d new: %d\n",
    cpu, (unsigned int) msr, (unsigned int) new_epb);
 }

 if (update_turbo) {
  int turbo_is_present_and_disabled;

  get_msr(cpu, MSR_IA32_MISC_ENABLE, &msr);

  turbo_is_present_and_disabled = ((msr & MSR_IA32_MISC_ENABLE_TURBO_DISABLE) != 0);

  if (turbo_update_value == 1) {
   if (turbo_is_present_and_disabled) {
    msr &= ~MSR_IA32_MISC_ENABLE_TURBO_DISABLE;
    put_msr(cpu, MSR_IA32_MISC_ENABLE, msr);
    if (verbose)
     printf("cpu%d: turbo ENABLE\n", cpu);
   }
  } else {





   msr |= MSR_IA32_MISC_ENABLE_TURBO_DISABLE;
   put_msr(cpu, MSR_IA32_MISC_ENABLE, msr);
   if (verbose)
    printf("cpu%d: turbo DISABLE\n", cpu);
  }
 }

 if (!has_hwp)
  return 0;

 if (!hwp_update_enabled())
  return 0;

 update_hwp_request(cpu);
 return 0;
}

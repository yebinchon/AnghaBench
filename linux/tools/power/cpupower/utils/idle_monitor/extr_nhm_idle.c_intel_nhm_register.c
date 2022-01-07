
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_monitor {int name; int name_len; } ;
struct TYPE_2__ {scalar_t__ vendor; int caps; } ;


 int CPUPOWER_CAP_APERF ;
 int CPUPOWER_CAP_INV_TSC ;
 int NHM_CSTATE_COUNT ;
 scalar_t__ X86_VENDOR_INTEL ;
 void* calloc (int ,int) ;
 int cpu_count ;
 TYPE_1__ cpupower_cpu_info ;
 void** current_count ;
 struct cpuidle_monitor intel_nhm_monitor ;
 void* is_valid ;
 void** previous_count ;
 int strlen (int ) ;

struct cpuidle_monitor *intel_nhm_register(void)
{
 int num;

 if (cpupower_cpu_info.vendor != X86_VENDOR_INTEL)
  return ((void*)0);

 if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_INV_TSC))
  return ((void*)0);

 if (!(cpupower_cpu_info.caps & CPUPOWER_CAP_APERF))
  return ((void*)0);


 is_valid = calloc(cpu_count, sizeof(int));
 for (num = 0; num < NHM_CSTATE_COUNT; num++) {
  previous_count[num] = calloc(cpu_count,
     sizeof(unsigned long long));
  current_count[num] = calloc(cpu_count,
     sizeof(unsigned long long));
 }

 intel_nhm_monitor.name_len = strlen(intel_nhm_monitor.name);
 return &intel_nhm_monitor;
}

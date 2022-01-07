
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_monitor {int name; int name_len; } ;
struct TYPE_2__ {scalar_t__ vendor; int family; int model; } ;


 int SNB_CSTATE_COUNT ;
 scalar_t__ X86_VENDOR_INTEL ;
 void* calloc (int ,int) ;
 int cpu_count ;
 TYPE_1__ cpupower_cpu_info ;
 void** current_count ;
 struct cpuidle_monitor intel_snb_monitor ;
 void* is_valid ;
 void** previous_count ;
 int strlen (int ) ;

__attribute__((used)) static struct cpuidle_monitor *snb_register(void)
{
 int num;

 if (cpupower_cpu_info.vendor != X86_VENDOR_INTEL
     || cpupower_cpu_info.family != 6)
  return ((void*)0);

 switch (cpupower_cpu_info.model) {
 case 0x2A:
 case 0x2D:
 case 0x3A:
 case 0x3E:
 case 0x3C:
 case 0x3F:
 case 0x45:
 case 0x46:
  break;
 default:
  return ((void*)0);
 }

 is_valid = calloc(cpu_count, sizeof(int));
 for (num = 0; num < SNB_CSTATE_COUNT; num++) {
  previous_count[num] = calloc(cpu_count,
     sizeof(unsigned long long));
  current_count[num] = calloc(cpu_count,
     sizeof(unsigned long long));
 }
 intel_snb_monitor.name_len = strlen(intel_snb_monitor.name);
 return &intel_snb_monitor;
}

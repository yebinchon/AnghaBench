
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_monitor {int hw_states_num; int name; int name_len; } ;
struct TYPE_2__ {scalar_t__ vendor; int family; } ;


 int AMD_FAM14H_STATE_NUM ;
 scalar_t__ MONITOR_NAME_LEN ;
 scalar_t__ X86_VENDOR_AMD ;
 struct cpuidle_monitor amd_fam14h_monitor ;
 int * amd_fam14h_pci_dev ;
 void* calloc (int ,int) ;
 int cpu_count ;
 TYPE_1__ cpupower_cpu_info ;
 void** current_count ;
 int is_nbp1_capable () ;
 int * pci_acc ;
 int * pci_slot_func_init (int **,int,int) ;
 void** previous_count ;
 int strlen (int ) ;
 int strncpy (int ,char*,scalar_t__) ;

struct cpuidle_monitor *amd_fam14h_register(void)
{
 int num;

 if (cpupower_cpu_info.vendor != X86_VENDOR_AMD)
  return ((void*)0);

 if (cpupower_cpu_info.family == 0x14)
  strncpy(amd_fam14h_monitor.name, "Fam_14h",
   MONITOR_NAME_LEN - 1);
 else if (cpupower_cpu_info.family == 0x12)
  strncpy(amd_fam14h_monitor.name, "Fam_12h",
   MONITOR_NAME_LEN - 1);
 else
  return ((void*)0);


 for (num = 0; num < AMD_FAM14H_STATE_NUM - 1; num++) {
  previous_count[num] = calloc(cpu_count,
           sizeof(unsigned long long));
  current_count[num] = calloc(cpu_count,
           sizeof(unsigned long long));
 }



 amd_fam14h_pci_dev = pci_slot_func_init(&pci_acc, 0x18, 6);
 if (amd_fam14h_pci_dev == ((void*)0) || pci_acc == ((void*)0))
  return ((void*)0);

 if (!is_nbp1_capable())
  amd_fam14h_monitor.hw_states_num = AMD_FAM14H_STATE_NUM - 1;

 amd_fam14h_monitor.name_len = strlen(amd_fam14h_monitor.name);
 return &amd_fam14h_monitor;
}

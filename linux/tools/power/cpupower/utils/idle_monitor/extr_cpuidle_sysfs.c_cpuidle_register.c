
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpuidle_monitor {int hw_states_num; int name; int name_len; } ;
struct TYPE_2__ {int id; int get_count_percent; int range; int desc; int name; } ;


 scalar_t__ CSTATE_DESC_LEN ;
 scalar_t__ CSTATE_NAME_LEN ;
 int RANGE_THREAD ;
 int cpu_count ;
 TYPE_1__* cpuidle_cstates ;
 int cpuidle_get_count_percent ;
 int cpuidle_state_count (int) ;
 char* cpuidle_state_desc (int,int) ;
 char* cpuidle_state_name (int,int) ;
 struct cpuidle_monitor cpuidle_sysfs_monitor ;
 void** current_count ;
 int fix_up_intel_idle_driver_name (char*,int) ;
 int free (char*) ;
 void* malloc (int) ;
 int map_power_idle_state_name (char*) ;
 void** previous_count ;
 int sched_getcpu () ;
 int strlen (int ) ;
 int strncpy (int ,char*,scalar_t__) ;

__attribute__((used)) static struct cpuidle_monitor *cpuidle_register(void)
{
 int num;
 char *tmp;
 int this_cpu;

 this_cpu = sched_getcpu();


 cpuidle_sysfs_monitor.hw_states_num = cpuidle_state_count(this_cpu);

 if (cpuidle_sysfs_monitor.hw_states_num <= 0)
  return ((void*)0);

 for (num = 0; num < cpuidle_sysfs_monitor.hw_states_num; num++) {
  tmp = cpuidle_state_name(this_cpu, num);
  if (tmp == ((void*)0))
   continue;

  map_power_idle_state_name(tmp);
  fix_up_intel_idle_driver_name(tmp, num);
  strncpy(cpuidle_cstates[num].name, tmp, CSTATE_NAME_LEN - 1);
  free(tmp);

  tmp = cpuidle_state_desc(this_cpu, num);
  if (tmp == ((void*)0))
   continue;
  strncpy(cpuidle_cstates[num].desc, tmp, CSTATE_DESC_LEN - 1);
  free(tmp);

  cpuidle_cstates[num].range = RANGE_THREAD;
  cpuidle_cstates[num].id = num;
  cpuidle_cstates[num].get_count_percent =
   cpuidle_get_count_percent;
 };


 previous_count = malloc(sizeof(long long *) * cpu_count);
 current_count = malloc(sizeof(long long *) * cpu_count);
 for (num = 0; num < cpu_count; num++) {
  previous_count[num] = malloc(sizeof(long long) *
     cpuidle_sysfs_monitor.hw_states_num);
  current_count[num] = malloc(sizeof(long long) *
     cpuidle_sysfs_monitor.hw_states_num);
 }

 cpuidle_sysfs_monitor.name_len = strlen(cpuidle_sysfs_monitor.name);
 return &cpuidle_sysfs_monitor;
}

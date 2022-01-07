
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int hw_states_num; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,int *) ;
 int cpu_count ;
 int cpuidle_state_time (int,int) ;
 TYPE_1__ cpuidle_sysfs_monitor ;
 int dprint (char*,int,int,int ) ;
 int ** previous_count ;
 int start_time ;

__attribute__((used)) static int cpuidle_start(void)
{
 int cpu, state;
 clock_gettime(CLOCK_REALTIME, &start_time);
 for (cpu = 0; cpu < cpu_count; cpu++) {
  for (state = 0; state < cpuidle_sysfs_monitor.hw_states_num;
       state++) {
   previous_count[cpu][state] =
    cpuidle_state_time(cpu, state);
   dprint("CPU %d - State: %d - Val: %llu\n",
          cpu, state, previous_count[cpu][state]);
  }
 };
 return 0;
}

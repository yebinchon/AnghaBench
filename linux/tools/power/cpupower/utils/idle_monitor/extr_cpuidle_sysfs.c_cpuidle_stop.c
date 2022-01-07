
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int hw_states_num; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,struct timespec*) ;
 int cpu_count ;
 int cpuidle_state_time (int,int) ;
 TYPE_1__ cpuidle_sysfs_monitor ;
 int ** current_count ;
 int dprint (char*,int,int,int ) ;
 int ** previous_count ;
 int start_time ;
 int timediff ;
 int timespec_diff_us (int ,struct timespec) ;

__attribute__((used)) static int cpuidle_stop(void)
{
 int cpu, state;
 struct timespec end_time;
 clock_gettime(CLOCK_REALTIME, &end_time);
 timediff = timespec_diff_us(start_time, end_time);

 for (cpu = 0; cpu < cpu_count; cpu++) {
  for (state = 0; state < cpuidle_sysfs_monitor.hw_states_num;
       state++) {
   current_count[cpu][state] =
    cpuidle_state_time(cpu, state);
   dprint("CPU %d - State: %d - Val: %llu\n",
          cpu, state, previous_count[cpu][state]);
  }
 };
 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct timechart {struct power_event* power_events; } ;
struct power_event {int cpu; struct power_event* next; int type; int end_time; int start_time; int state; } ;


 int CSTATE ;
 int * cpus_cstate_start_times ;
 int * cpus_cstate_state ;
 struct power_event* zalloc (int) ;

__attribute__((used)) static void c_state_end(struct timechart *tchart, int cpu, u64 timestamp)
{
 struct power_event *pwr = zalloc(sizeof(*pwr));

 if (!pwr)
  return;

 pwr->state = cpus_cstate_state[cpu];
 pwr->start_time = cpus_cstate_start_times[cpu];
 pwr->end_time = timestamp;
 pwr->cpu = cpu;
 pwr->type = CSTATE;
 pwr->next = tchart->power_events;

 tchart->power_events = pwr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u64 ;
struct timechart {size_t numcpus; struct power_event* power_events; scalar_t__ min_freq; scalar_t__ first_time; int last_time; } ;
struct power_event {size_t cpu; scalar_t__ state; scalar_t__ start_time; struct power_event* next; int type; int end_time; } ;


 int CSTATE ;
 int PSTATE ;
 scalar_t__* cpus_cstate_start_times ;
 scalar_t__* cpus_cstate_state ;
 scalar_t__* cpus_pstate_start_times ;
 scalar_t__* cpus_pstate_state ;
 struct power_event* zalloc (int) ;

__attribute__((used)) static void end_sample_processing(struct timechart *tchart)
{
 u64 cpu;
 struct power_event *pwr;

 for (cpu = 0; cpu <= tchart->numcpus; cpu++) {
  pwr = zalloc(sizeof(*pwr));
  if (!pwr)
   return;

  pwr->state = cpus_pstate_state[cpu];
  pwr->start_time = cpus_pstate_start_times[cpu];
  pwr->end_time = tchart->last_time;
  pwr->cpu = cpu;
  pwr->type = PSTATE;
  pwr->next = tchart->power_events;

  if (!pwr->start_time)
   pwr->start_time = tchart->first_time;
  if (!pwr->state)
   pwr->state = tchart->min_freq;
  tchart->power_events = pwr;
 }
}

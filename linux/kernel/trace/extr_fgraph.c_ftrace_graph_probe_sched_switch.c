
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {unsigned long long ftrace_timestamp; int curr_ret_stack; TYPE_1__* ret_stack; } ;
struct TYPE_2__ {unsigned long long calltime; } ;


 scalar_t__ fgraph_sleep_time ;
 unsigned long long trace_clock_local () ;

__attribute__((used)) static void
ftrace_graph_probe_sched_switch(void *ignore, bool preempt,
   struct task_struct *prev, struct task_struct *next)
{
 unsigned long long timestamp;
 int index;





 if (fgraph_sleep_time)
  return;

 timestamp = trace_clock_local();

 prev->ftrace_timestamp = timestamp;


 if (!next->ftrace_timestamp)
  return;





 timestamp -= next->ftrace_timestamp;

 for (index = next->curr_ret_stack; index >= 0; index--)
  next->ret_stack[index].calltime += timestamp;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sysctl__read_int (char*,int*) ;
 int sysctl_perf_event_max_contexts_per_stack ;
 int sysctl_perf_event_max_stack ;

int sysctl__max_stack(void)
{
 int value;

 if (sysctl__read_int("kernel/perf_event_max_stack", &value) == 0)
  sysctl_perf_event_max_stack = value;

 if (sysctl__read_int("kernel/perf_event_max_contexts_per_stack", &value) == 0)
  sysctl_perf_event_max_contexts_per_stack = value;

 return sysctl_perf_event_max_stack;
}

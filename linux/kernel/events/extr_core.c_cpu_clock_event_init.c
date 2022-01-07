
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ config; } ;
struct perf_event {TYPE_1__ attr; } ;


 int ENOENT ;
 int EOPNOTSUPP ;
 scalar_t__ PERF_COUNT_SW_CPU_CLOCK ;
 scalar_t__ PERF_TYPE_SOFTWARE ;
 scalar_t__ has_branch_stack (struct perf_event*) ;
 int perf_swevent_init_hrtimer (struct perf_event*) ;

__attribute__((used)) static int cpu_clock_event_init(struct perf_event *event)
{
 if (event->attr.type != PERF_TYPE_SOFTWARE)
  return -ENOENT;

 if (event->attr.config != PERF_COUNT_SW_CPU_CLOCK)
  return -ENOENT;




 if (has_branch_stack(event))
  return -EOPNOTSUPP;

 perf_swevent_init_hrtimer(event);

 return 0;
}

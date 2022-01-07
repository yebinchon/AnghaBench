
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int PERF_EF_START ;
 int cpu_clock_event_start (struct perf_event*,int) ;
 int perf_event_update_userpage (struct perf_event*) ;

__attribute__((used)) static int cpu_clock_event_add(struct perf_event *event, int flags)
{
 if (flags & PERF_EF_START)
  cpu_clock_event_start(event, flags);
 perf_event_update_userpage(event);

 return 0;
}

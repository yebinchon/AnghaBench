
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int dummy; } ;


 int perf_event_release_kernel (struct perf_event*) ;

void unregister_hw_breakpoint(struct perf_event *bp)
{
 if (!bp)
  return;
 perf_event_release_kernel(bp);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {int attach_state; } ;


 int PERF_ATTACH_ITRACE ;

void perf_event_itrace_started(struct perf_event *event)
{
 event->attach_state |= PERF_ATTACH_ITRACE;
}

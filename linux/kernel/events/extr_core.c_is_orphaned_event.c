
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ state; } ;


 scalar_t__ PERF_EVENT_STATE_DEAD ;

__attribute__((used)) static bool is_orphaned_event(struct perf_event *event)
{
 return event->state == PERF_EVENT_STATE_DEAD;
}

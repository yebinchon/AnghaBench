
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int dummy; } ;
struct TYPE_2__ {scalar_t__ enable_on_exec; } ;
struct perf_event {scalar_t__ state; TYPE_1__ attr; } ;


 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 int perf_event_set_state (struct perf_event*,scalar_t__) ;

__attribute__((used)) static int event_enable_on_exec(struct perf_event *event,
    struct perf_event_context *ctx)
{
 if (!event->attr.enable_on_exec)
  return 0;

 event->attr.enable_on_exec = 0;
 if (event->state >= PERF_EVENT_STATE_INACTIVE)
  return 0;

 perf_event_set_state(event, PERF_EVENT_STATE_INACTIVE);

 return 1;
}

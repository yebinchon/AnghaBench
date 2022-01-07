
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sched_in_data {TYPE_1__* ctx; int cpuctx; int can_add_hw; } ;
struct perf_event {scalar_t__ state; int active_list; } ;
struct TYPE_2__ {int pinned_active; } ;


 int PERF_EVENT_STATE_ERROR ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 scalar_t__ PERF_EVENT_STATE_OFF ;
 int event_filter_match (struct perf_event*) ;
 scalar_t__ group_can_go_on (struct perf_event*,int ,int ) ;
 int group_sched_in (struct perf_event*,int ,TYPE_1__*) ;
 int list_add_tail (int *,int *) ;
 int perf_event_set_state (struct perf_event*,int ) ;

__attribute__((used)) static int pinned_sched_in(struct perf_event *event, void *data)
{
 struct sched_in_data *sid = data;

 if (event->state <= PERF_EVENT_STATE_OFF)
  return 0;

 if (!event_filter_match(event))
  return 0;

 if (group_can_go_on(event, sid->cpuctx, sid->can_add_hw)) {
  if (!group_sched_in(event, sid->cpuctx, sid->ctx))
   list_add_tail(&event->active_list, &sid->ctx->pinned_active);
 }





 if (event->state == PERF_EVENT_STATE_INACTIVE)
  perf_event_set_state(event, PERF_EVENT_STATE_ERROR);

 return 0;
}

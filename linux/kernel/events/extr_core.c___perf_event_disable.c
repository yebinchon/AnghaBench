
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int is_active; } ;
struct perf_event {scalar_t__ state; struct perf_event* group_leader; } ;
struct perf_cpu_context {int dummy; } ;


 int EVENT_TIME ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 int PERF_EVENT_STATE_OFF ;
 int event_sched_out (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ;
 int group_sched_out (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_event_set_state (struct perf_event*,int ) ;
 int update_cgrp_time_from_event (struct perf_event*) ;
 int update_context_time (struct perf_event_context*) ;

__attribute__((used)) static void __perf_event_disable(struct perf_event *event,
     struct perf_cpu_context *cpuctx,
     struct perf_event_context *ctx,
     void *info)
{
 if (event->state < PERF_EVENT_STATE_INACTIVE)
  return;

 if (ctx->is_active & EVENT_TIME) {
  update_context_time(ctx);
  update_cgrp_time_from_event(event);
 }

 if (event == event->group_leader)
  group_sched_out(event, cpuctx, ctx);
 else
  event_sched_out(event, cpuctx, ctx);

 perf_event_set_state(event, PERF_EVENT_STATE_OFF);
}

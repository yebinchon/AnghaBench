
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {scalar_t__ task; scalar_t__ is_active; } ;
struct perf_event {scalar_t__ state; struct perf_event* group_leader; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 int EVENT_TIME ;
 scalar_t__ PERF_EVENT_STATE_ACTIVE ;
 scalar_t__ PERF_EVENT_STATE_ERROR ;
 scalar_t__ PERF_EVENT_STATE_INACTIVE ;
 int WARN_ON_ONCE (int) ;
 int ctx_resched (struct perf_cpu_context*,struct perf_event_context*,int ) ;
 int ctx_sched_in (struct perf_event_context*,struct perf_cpu_context*,int ,int ) ;
 int ctx_sched_out (struct perf_event_context*,struct perf_cpu_context*,int ) ;
 int current ;
 int event_filter_match (struct perf_event*) ;
 int get_event_type (struct perf_event*) ;
 int perf_event_set_state (struct perf_event*,scalar_t__) ;

__attribute__((used)) static void __perf_event_enable(struct perf_event *event,
    struct perf_cpu_context *cpuctx,
    struct perf_event_context *ctx,
    void *info)
{
 struct perf_event *leader = event->group_leader;
 struct perf_event_context *task_ctx;

 if (event->state >= PERF_EVENT_STATE_INACTIVE ||
     event->state <= PERF_EVENT_STATE_ERROR)
  return;

 if (ctx->is_active)
  ctx_sched_out(ctx, cpuctx, EVENT_TIME);

 perf_event_set_state(event, PERF_EVENT_STATE_INACTIVE);

 if (!ctx->is_active)
  return;

 if (!event_filter_match(event)) {
  ctx_sched_in(ctx, cpuctx, EVENT_TIME, current);
  return;
 }





 if (leader != event && leader->state != PERF_EVENT_STATE_ACTIVE) {
  ctx_sched_in(ctx, cpuctx, EVENT_TIME, current);
  return;
 }

 task_ctx = cpuctx->task_ctx;
 if (ctx->task)
  WARN_ON_ONCE(task_ctx != ctx);

 ctx_resched(cpuctx, task_ctx, get_event_type(event));
}

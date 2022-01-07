
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct task_struct {int dummy; } ;
struct perf_event_context {int is_active; int timestamp; scalar_t__ task; int nr_events; int lock; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;
typedef enum event_type_t { ____Placeholder_event_type_t } event_type_t ;


 int EVENT_FLEXIBLE ;
 int EVENT_PINNED ;
 int EVENT_TIME ;
 int WARN_ON_ONCE (int) ;
 int ctx_flexible_sched_in (struct perf_event_context*,struct perf_cpu_context*) ;
 int ctx_pinned_sched_in (struct perf_event_context*,struct perf_cpu_context*) ;
 scalar_t__ likely (int) ;
 int lockdep_assert_held (int *) ;
 int perf_cgroup_set_timestamp (struct task_struct*,struct perf_event_context*) ;
 int perf_clock () ;

__attribute__((used)) static void
ctx_sched_in(struct perf_event_context *ctx,
      struct perf_cpu_context *cpuctx,
      enum event_type_t event_type,
      struct task_struct *task)
{
 int is_active = ctx->is_active;
 u64 now;

 lockdep_assert_held(&ctx->lock);

 if (likely(!ctx->nr_events))
  return;

 ctx->is_active |= (event_type | EVENT_TIME);
 if (ctx->task) {
  if (!is_active)
   cpuctx->task_ctx = ctx;
  else
   WARN_ON_ONCE(cpuctx->task_ctx != ctx);
 }

 is_active ^= ctx->is_active;

 if (is_active & EVENT_TIME) {

  now = perf_clock();
  ctx->timestamp = now;
  perf_cgroup_set_timestamp(task, ctx);
 }





 if (is_active & EVENT_PINNED)
  ctx_pinned_sched_in(ctx, cpuctx);


 if (is_active & EVENT_FLEXIBLE)
  ctx_flexible_sched_in(ctx, cpuctx);
}

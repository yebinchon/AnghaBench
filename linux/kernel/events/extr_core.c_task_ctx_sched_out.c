
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;
typedef enum event_type_t { ____Placeholder_event_type_t } event_type_t ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int ctx_sched_out (struct perf_event_context*,struct perf_cpu_context*,int) ;

__attribute__((used)) static void task_ctx_sched_out(struct perf_cpu_context *cpuctx,
          struct perf_event_context *ctx,
          enum event_type_t event_type)
{
 if (!cpuctx->task_ctx)
  return;

 if (WARN_ON_ONCE(ctx != cpuctx->task_ctx))
  return;

 ctx_sched_out(ctx, cpuctx, event_type);
}

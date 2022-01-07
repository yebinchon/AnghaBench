
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int dummy; } ;
struct perf_cpu_context {int dummy; } ;


 int EVENT_FLEXIBLE ;
 int EVENT_PINNED ;
 int cpu_ctx_sched_in (struct perf_cpu_context*,int ,struct task_struct*) ;
 int ctx_sched_in (struct perf_event_context*,struct perf_cpu_context*,int ,struct task_struct*) ;

__attribute__((used)) static void perf_event_sched_in(struct perf_cpu_context *cpuctx,
    struct perf_event_context *ctx,
    struct task_struct *task)
{
 cpu_ctx_sched_in(cpuctx, EVENT_PINNED, task);
 if (ctx)
  ctx_sched_in(ctx, cpuctx, EVENT_PINNED, task);
 cpu_ctx_sched_in(cpuctx, EVENT_FLEXIBLE, task);
 if (ctx)
  ctx_sched_in(ctx, cpuctx, EVENT_FLEXIBLE, task);
}

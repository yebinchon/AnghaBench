
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int tree; } ;
struct perf_event_context {int pmu; TYPE_1__ pinned_groups; int nr_events; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 int EVENT_FLEXIBLE ;
 int RB_EMPTY_ROOT (int *) ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 int cpu_ctx_sched_out (struct perf_cpu_context*,int ) ;
 int perf_ctx_lock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_event_sched_in (struct perf_cpu_context*,struct perf_event_context*,struct task_struct*) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;

__attribute__((used)) static void perf_event_context_sched_in(struct perf_event_context *ctx,
     struct task_struct *task)
{
 struct perf_cpu_context *cpuctx;

 cpuctx = __get_cpu_context(ctx);
 if (cpuctx->task_ctx == ctx)
  return;

 perf_ctx_lock(cpuctx, ctx);




 if (!ctx->nr_events)
  goto unlock;

 perf_pmu_disable(ctx->pmu);
 if (!RB_EMPTY_ROOT(&ctx->pinned_groups.tree))
  cpu_ctx_sched_out(cpuctx, EVENT_FLEXIBLE);
 perf_event_sched_in(cpuctx, ctx, task);
 perf_pmu_enable(ctx->pmu);

unlock:
 perf_ctx_unlock(cpuctx, ctx);
}

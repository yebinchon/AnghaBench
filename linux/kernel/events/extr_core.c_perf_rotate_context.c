
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {int rotate_necessary; int pmu; } ;
struct perf_event {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; struct perf_event_context ctx; } ;


 int EVENT_FLEXIBLE ;
 int cpu_ctx_sched_out (struct perf_cpu_context*,int ) ;
 struct perf_event* ctx_event_to_rotate (struct perf_event_context*) ;
 int ctx_sched_out (struct perf_event_context*,struct perf_cpu_context*,int ) ;
 int current ;
 int perf_ctx_lock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_event_sched_in (struct perf_cpu_context*,struct perf_event_context*,int ) ;
 int perf_pmu_disable (int ) ;
 int perf_pmu_enable (int ) ;
 int rotate_ctx (struct perf_event_context*,struct perf_event*) ;

__attribute__((used)) static bool perf_rotate_context(struct perf_cpu_context *cpuctx)
{
 struct perf_event *cpu_event = ((void*)0), *task_event = ((void*)0);
 struct perf_event_context *task_ctx = ((void*)0);
 int cpu_rotate, task_rotate;






 cpu_rotate = cpuctx->ctx.rotate_necessary;
 task_ctx = cpuctx->task_ctx;
 task_rotate = task_ctx ? task_ctx->rotate_necessary : 0;

 if (!(cpu_rotate || task_rotate))
  return 0;

 perf_ctx_lock(cpuctx, cpuctx->task_ctx);
 perf_pmu_disable(cpuctx->ctx.pmu);

 if (task_rotate)
  task_event = ctx_event_to_rotate(task_ctx);
 if (cpu_rotate)
  cpu_event = ctx_event_to_rotate(&cpuctx->ctx);





 if (task_event || (task_ctx && cpu_event))
  ctx_sched_out(task_ctx, cpuctx, EVENT_FLEXIBLE);
 if (cpu_event)
  cpu_ctx_sched_out(cpuctx, EVENT_FLEXIBLE);

 if (task_event)
  rotate_ctx(task_ctx, task_event);
 if (cpu_event)
  rotate_ctx(&cpuctx->ctx, cpu_event);

 perf_event_sched_in(cpuctx, task_ctx, current);

 perf_pmu_enable(cpuctx->ctx.pmu);
 perf_ctx_unlock(cpuctx, cpuctx->task_ctx);

 return 1;
}

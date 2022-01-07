
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int pmu_cpu_context; } ;
struct perf_event_context {int dummy; } ;
struct perf_cpu_context {struct perf_event_context* task_ctx; } ;


 int EVENT_ALL ;
 int EVENT_CPU ;
 int ctx_resched (struct perf_cpu_context*,struct perf_event_context*,int) ;
 int perf_ctx_lock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 struct perf_cpu_context* this_cpu_ptr (int ) ;

void perf_pmu_resched(struct pmu *pmu)
{
 struct perf_cpu_context *cpuctx = this_cpu_ptr(pmu->pmu_cpu_context);
 struct perf_event_context *task_ctx = cpuctx->task_ctx;

 perf_ctx_lock(cpuctx, task_ctx);
 ctx_resched(cpuctx, task_ctx, EVENT_ALL|EVENT_CPU);
 perf_ctx_unlock(cpuctx, task_ctx);
}

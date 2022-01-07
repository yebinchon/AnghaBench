
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct remote_output {int err; int rb; } ;
struct pmu {int pmu_cpu_context; } ;
struct perf_event {int rb; TYPE_1__* ctx; } ;
struct perf_cpu_context {int * task_ctx; int ctx; } ;
struct TYPE_2__ {struct pmu* pmu; } ;


 int __perf_event_output_stop ;
 int perf_iterate_ctx (int *,int ,struct remote_output*,int) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct perf_cpu_context* this_cpu_ptr (int ) ;

__attribute__((used)) static int __perf_pmu_output_stop(void *info)
{
 struct perf_event *event = info;
 struct pmu *pmu = event->ctx->pmu;
 struct perf_cpu_context *cpuctx = this_cpu_ptr(pmu->pmu_cpu_context);
 struct remote_output ro = {
  .rb = event->rb,
 };

 rcu_read_lock();
 perf_iterate_ctx(&cpuctx->ctx, __perf_event_output_stop, &ro, 0);
 if (cpuctx->task_ctx)
  perf_iterate_ctx(cpuctx->task_ctx, __perf_event_output_stop,
       &ro, 0);
 rcu_read_unlock();

 return ro.err;
}

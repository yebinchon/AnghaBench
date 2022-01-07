
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int pmu_cpu_context; } ;
struct perf_cpu_context {int sched_cb_entry; int sched_cb_usage; } ;


 int list_del (int *) ;
 int perf_sched_cb_usages ;
 int this_cpu_dec (int ) ;
 struct perf_cpu_context* this_cpu_ptr (int ) ;

void perf_sched_cb_dec(struct pmu *pmu)
{
 struct perf_cpu_context *cpuctx = this_cpu_ptr(pmu->pmu_cpu_context);

 this_cpu_dec(perf_sched_cb_usages);

 if (!--cpuctx->sched_cb_usage)
  list_del(&cpuctx->sched_cb_entry);
}

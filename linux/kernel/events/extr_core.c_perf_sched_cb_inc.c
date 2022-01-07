
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu {int * pmu_cpu_context; } ;
struct perf_cpu_context {int sched_cb_entry; int sched_cb_usage; } ;


 int list_add (int *,struct perf_cpu_context*) ;
 int perf_sched_cb_usages ;
 int sched_cb_list ;
 int this_cpu_inc (int ) ;
 struct perf_cpu_context* this_cpu_ptr (int *) ;

void perf_sched_cb_inc(struct pmu *pmu)
{
 struct perf_cpu_context *cpuctx = this_cpu_ptr(pmu->pmu_cpu_context);

 if (!cpuctx->sched_cb_usage++)
  list_add(&cpuctx->sched_cb_entry, this_cpu_ptr(&sched_cb_list));

 this_cpu_inc(perf_sched_cb_usages);
}

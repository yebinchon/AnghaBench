
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_in_data {int can_add_hw; struct perf_cpu_context* cpuctx; struct perf_event_context* ctx; } ;
struct perf_event_context {int pinned_groups; } ;
struct perf_cpu_context {int dummy; } ;


 int pinned_sched_in ;
 int smp_processor_id () ;
 int visit_groups_merge (int *,int ,int ,struct sched_in_data*) ;

__attribute__((used)) static void
ctx_pinned_sched_in(struct perf_event_context *ctx,
      struct perf_cpu_context *cpuctx)
{
 struct sched_in_data sid = {
  .ctx = ctx,
  .cpuctx = cpuctx,
  .can_add_hw = 1,
 };

 visit_groups_merge(&ctx->pinned_groups,
      smp_processor_id(),
      pinned_sched_in, &sid);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_cpu_context {int ctx; } ;
typedef enum event_type_t { ____Placeholder_event_type_t } event_type_t ;


 int ctx_sched_out (int *,struct perf_cpu_context*,int) ;

__attribute__((used)) static void cpu_ctx_sched_out(struct perf_cpu_context *cpuctx,
         enum event_type_t event_type)
{
 ctx_sched_out(&cpuctx->ctx, cpuctx, event_type);
}

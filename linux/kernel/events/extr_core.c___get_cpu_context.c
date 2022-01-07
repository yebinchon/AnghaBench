
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {TYPE_1__* pmu; } ;
struct perf_cpu_context {int dummy; } ;
struct TYPE_2__ {int pmu_cpu_context; } ;


 struct perf_cpu_context* this_cpu_ptr (int ) ;

__attribute__((used)) static inline struct perf_cpu_context *
__get_cpu_context(struct perf_event_context *ctx)
{
 return this_cpu_ptr(ctx->pmu->pmu_cpu_context);
}

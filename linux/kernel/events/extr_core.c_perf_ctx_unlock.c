
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_context {int lock; } ;
struct TYPE_2__ {int lock; } ;
struct perf_cpu_context {TYPE_1__ ctx; } ;


 int raw_spin_unlock (int *) ;

__attribute__((used)) static void perf_ctx_unlock(struct perf_cpu_context *cpuctx,
       struct perf_event_context *ctx)
{
 if (ctx)
  raw_spin_unlock(&ctx->lock);
 raw_spin_unlock(&cpuctx->ctx.lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_context {scalar_t__ task; int is_active; } ;
struct perf_event {struct perf_event_context* ctx; } ;
struct perf_cpu_context {struct perf_event_context ctx; struct perf_event_context* task_ctx; } ;
struct event_function_struct {int data; int (* func ) (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*,int ) ;struct perf_event* event; } ;


 int ESRCH ;
 int WARN_ON_ONCE (int) ;
 struct perf_cpu_context* __get_cpu_context (struct perf_event_context*) ;
 scalar_t__ current ;
 int lockdep_assert_irqs_disabled () ;
 int perf_ctx_lock (struct perf_cpu_context*,struct perf_event_context*) ;
 int perf_ctx_unlock (struct perf_cpu_context*,struct perf_event_context*) ;
 int stub1 (struct perf_event*,struct perf_cpu_context*,struct perf_event_context*,int ) ;

__attribute__((used)) static int event_function(void *info)
{
 struct event_function_struct *efs = info;
 struct perf_event *event = efs->event;
 struct perf_event_context *ctx = event->ctx;
 struct perf_cpu_context *cpuctx = __get_cpu_context(ctx);
 struct perf_event_context *task_ctx = cpuctx->task_ctx;
 int ret = 0;

 lockdep_assert_irqs_disabled();

 perf_ctx_lock(cpuctx, task_ctx);




 if (ctx->task) {
  if (ctx->task != current) {
   ret = -ESRCH;
   goto unlock;
  }
  WARN_ON_ONCE(!ctx->is_active);




  WARN_ON_ONCE(task_ctx != ctx);
 } else {
  WARN_ON_ONCE(&cpuctx->ctx != ctx);
 }

 efs->func(event, cpuctx, ctx, efs->data);
unlock:
 perf_ctx_unlock(cpuctx, task_ctx);

 return ret;
}

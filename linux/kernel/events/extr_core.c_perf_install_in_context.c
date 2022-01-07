
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int lock; struct task_struct* task; int mutex; } ;
struct perf_event {int cpu; int ctx; } ;


 struct task_struct* READ_ONCE (struct task_struct*) ;
 struct task_struct* TASK_TOMBSTONE ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int __perf_install_in_context ;
 int add_event_to_ctx (struct perf_event*,struct perf_event_context*) ;
 int cpu_function_call (int,int ,struct perf_event*) ;
 int exclusive_event_installable (struct perf_event*,struct perf_event_context*) ;
 int lockdep_assert_held (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int smp_mb () ;
 int smp_store_release (int *,struct perf_event_context*) ;
 scalar_t__ task_curr (struct task_struct*) ;
 int task_function_call (struct task_struct*,int ,struct perf_event*) ;

__attribute__((used)) static void
perf_install_in_context(struct perf_event_context *ctx,
   struct perf_event *event,
   int cpu)
{
 struct task_struct *task = READ_ONCE(ctx->task);

 lockdep_assert_held(&ctx->mutex);

 WARN_ON_ONCE(!exclusive_event_installable(event, ctx));

 if (event->cpu != -1)
  event->cpu = cpu;





 smp_store_release(&event->ctx, ctx);

 if (!task) {
  cpu_function_call(cpu, __perf_install_in_context, event);
  return;
 }




 if (WARN_ON_ONCE(task == TASK_TOMBSTONE))
  return;
 smp_mb();
again:
 if (!task_function_call(task, __perf_install_in_context, event))
  return;

 raw_spin_lock_irq(&ctx->lock);
 task = ctx->task;
 if (WARN_ON_ONCE(task == TASK_TOMBSTONE)) {





  raw_spin_unlock_irq(&ctx->lock);
  return;
 }




 if (task_curr(task)) {
  raw_spin_unlock_irq(&ctx->lock);
  goto again;
 }
 add_event_to_ctx(event, ctx);
 raw_spin_unlock_irq(&ctx->lock);
}

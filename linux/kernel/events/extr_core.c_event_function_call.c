
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct perf_event_context {int lock; scalar_t__ is_active; struct task_struct* task; int mutex; } ;
struct perf_event {int cpu; int parent; struct perf_event_context* ctx; } ;
struct event_function_struct {void* data; int (* func ) (struct perf_event*,int *,struct perf_event_context*,void*) ;struct perf_event* event; } ;
typedef int (* event_f ) (struct perf_event*,int *,struct perf_event_context*,void*) ;


 struct task_struct* READ_ONCE (struct task_struct*) ;
 struct task_struct* TASK_TOMBSTONE ;
 int cpu_function_call (int ,int ,struct event_function_struct*) ;
 int event_function ;
 int lockdep_assert_held (int *) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int task_function_call (struct task_struct*,int ,struct event_function_struct*) ;

__attribute__((used)) static void event_function_call(struct perf_event *event, event_f func, void *data)
{
 struct perf_event_context *ctx = event->ctx;
 struct task_struct *task = READ_ONCE(ctx->task);
 struct event_function_struct efs = {
  .event = event,
  .func = func,
  .data = data,
 };

 if (!event->parent) {





  lockdep_assert_held(&ctx->mutex);
 }

 if (!task) {
  cpu_function_call(event->cpu, event_function, &efs);
  return;
 }

 if (task == TASK_TOMBSTONE)
  return;

again:
 if (!task_function_call(task, event_function, &efs))
  return;

 raw_spin_lock_irq(&ctx->lock);




 task = ctx->task;
 if (task == TASK_TOMBSTONE) {
  raw_spin_unlock_irq(&ctx->lock);
  return;
 }
 if (ctx->is_active) {
  raw_spin_unlock_irq(&ctx->lock);
  goto again;
 }
 func(event, ((void*)0), ctx, data);
 raw_spin_unlock_irq(&ctx->lock);
}

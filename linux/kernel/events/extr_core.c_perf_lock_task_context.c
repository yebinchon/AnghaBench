
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int * perf_event_ctxp; } ;
struct perf_event_context {struct task_struct* task; int lock; int refcount; } ;


 struct task_struct* TASK_TOMBSTONE ;
 int WARN_ON_ONCE (int) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 struct perf_event_context* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static struct perf_event_context *
perf_lock_task_context(struct task_struct *task, int ctxn, unsigned long *flags)
{
 struct perf_event_context *ctx;

retry:
 local_irq_save(*flags);
 rcu_read_lock();
 ctx = rcu_dereference(task->perf_event_ctxp[ctxn]);
 if (ctx) {
  raw_spin_lock(&ctx->lock);
  if (ctx != rcu_dereference(task->perf_event_ctxp[ctxn])) {
   raw_spin_unlock(&ctx->lock);
   rcu_read_unlock();
   local_irq_restore(*flags);
   goto retry;
  }

  if (ctx->task == TASK_TOMBSTONE ||
      !refcount_inc_not_zero(&ctx->refcount)) {
   raw_spin_unlock(&ctx->lock);
   ctx = ((void*)0);
  } else {
   WARN_ON_ONCE(ctx->task != task);
  }
 }
 rcu_read_unlock();
 if (!ctx)
  local_irq_restore(*flags);
 return ctx;
}

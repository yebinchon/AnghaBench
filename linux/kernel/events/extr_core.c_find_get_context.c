
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int flags; int perf_event_mutex; scalar_t__* perf_event_ctxp; } ;
struct pmu {int task_ctx_nr; int task_ctx_size; int pmu_cpu_context; } ;
struct perf_event_context {int pin_count; void* task_ctx_data; int lock; } ;
struct perf_event {int cpu; int attach_state; } ;
struct perf_cpu_context {struct perf_event_context ctx; } ;


 int CAP_SYS_ADMIN ;
 int EACCES ;
 int EAGAIN ;
 int EINVAL ;
 int ENOMEM ;
 struct perf_event_context* ERR_PTR (int) ;
 int ESRCH ;
 int GFP_KERNEL ;
 int PERF_ATTACH_TASK_DATA ;
 int PF_EXITING ;
 struct perf_event_context* alloc_perf_context (struct pmu*,struct task_struct*) ;
 int capable (int ) ;
 int get_ctx (struct perf_event_context*) ;
 int kfree (void*) ;
 void* kzalloc (int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct perf_cpu_context* per_cpu_ptr (int ,int) ;
 struct perf_event_context* perf_lock_task_context (struct task_struct*,int,unsigned long*) ;
 scalar_t__ perf_paranoid_cpu () ;
 int put_ctx (struct perf_event_context*) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int rcu_assign_pointer (scalar_t__,struct perf_event_context*) ;
 struct perf_event_context* unclone_ctx (struct perf_event_context*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct perf_event_context *
find_get_context(struct pmu *pmu, struct task_struct *task,
  struct perf_event *event)
{
 struct perf_event_context *ctx, *clone_ctx = ((void*)0);
 struct perf_cpu_context *cpuctx;
 void *task_ctx_data = ((void*)0);
 unsigned long flags;
 int ctxn, err;
 int cpu = event->cpu;

 if (!task) {

  if (perf_paranoid_cpu() && !capable(CAP_SYS_ADMIN))
   return ERR_PTR(-EACCES);

  cpuctx = per_cpu_ptr(pmu->pmu_cpu_context, cpu);
  ctx = &cpuctx->ctx;
  get_ctx(ctx);
  ++ctx->pin_count;

  return ctx;
 }

 err = -EINVAL;
 ctxn = pmu->task_ctx_nr;
 if (ctxn < 0)
  goto errout;

 if (event->attach_state & PERF_ATTACH_TASK_DATA) {
  task_ctx_data = kzalloc(pmu->task_ctx_size, GFP_KERNEL);
  if (!task_ctx_data) {
   err = -ENOMEM;
   goto errout;
  }
 }

retry:
 ctx = perf_lock_task_context(task, ctxn, &flags);
 if (ctx) {
  clone_ctx = unclone_ctx(ctx);
  ++ctx->pin_count;

  if (task_ctx_data && !ctx->task_ctx_data) {
   ctx->task_ctx_data = task_ctx_data;
   task_ctx_data = ((void*)0);
  }
  raw_spin_unlock_irqrestore(&ctx->lock, flags);

  if (clone_ctx)
   put_ctx(clone_ctx);
 } else {
  ctx = alloc_perf_context(pmu, task);
  err = -ENOMEM;
  if (!ctx)
   goto errout;

  if (task_ctx_data) {
   ctx->task_ctx_data = task_ctx_data;
   task_ctx_data = ((void*)0);
  }

  err = 0;
  mutex_lock(&task->perf_event_mutex);




  if (task->flags & PF_EXITING)
   err = -ESRCH;
  else if (task->perf_event_ctxp[ctxn])
   err = -EAGAIN;
  else {
   get_ctx(ctx);
   ++ctx->pin_count;
   rcu_assign_pointer(task->perf_event_ctxp[ctxn], ctx);
  }
  mutex_unlock(&task->perf_event_mutex);

  if (unlikely(err)) {
   put_ctx(ctx);

   if (err == -EAGAIN)
    goto retry;
   goto errout;
  }
 }

 kfree(task_ctx_data);
 return ctx;

errout:
 kfree(task_ctx_data);
 return ERR_PTR(err);
}

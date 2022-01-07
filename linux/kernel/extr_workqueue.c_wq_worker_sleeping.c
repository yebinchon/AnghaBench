
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int lock; int worklist; int nr_running; } ;
struct worker {int flags; int sleeping; int task; struct worker_pool* pool; } ;
struct task_struct {int dummy; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int WORKER_NOT_RUNNING ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct worker* first_idle_worker (struct worker_pool*) ;
 struct worker* kthread_data (struct task_struct*) ;
 int list_empty (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int wake_up_process (int ) ;

void wq_worker_sleeping(struct task_struct *task)
{
 struct worker *next, *worker = kthread_data(task);
 struct worker_pool *pool;






 if (worker->flags & WORKER_NOT_RUNNING)
  return;

 pool = worker->pool;

 if (WARN_ON_ONCE(worker->sleeping))
  return;

 worker->sleeping = 1;
 spin_lock_irq(&pool->lock);
 if (atomic_dec_and_test(&pool->nr_running) &&
     !list_empty(&pool->worklist)) {
  next = first_idle_worker(pool);
  if (next)
   wake_up_process(next->task);
 }
 spin_unlock_irq(&pool->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worker_pool {int lock; } ;
struct worker {char* desc; scalar_t__ current_work; struct worker_pool* pool; } ;
struct task_struct {int flags; int comm; } ;


 int PF_WQ_WORKER ;
 struct worker* kthread_data (struct task_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int scnprintf (char*,size_t,char*,char*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int strscpy (char*,int ,size_t) ;
 int wq_pool_attach_mutex ;

void wq_worker_comm(char *buf, size_t size, struct task_struct *task)
{
 int off;


 off = strscpy(buf, task->comm, size);
 if (off < 0)
  return;


 mutex_lock(&wq_pool_attach_mutex);

 if (task->flags & PF_WQ_WORKER) {
  struct worker *worker = kthread_data(task);
  struct worker_pool *pool = worker->pool;

  if (pool) {
   spin_lock_irq(&pool->lock);





   if (worker->desc[0] != '\0') {
    if (worker->current_work)
     scnprintf(buf + off, size - off, "+%s",
        worker->desc);
    else
     scnprintf(buf + off, size - off, "-%s",
        worker->desc);
   }
   spin_unlock_irq(&pool->lock);
  }
 }

 mutex_unlock(&wq_pool_attach_mutex);
}

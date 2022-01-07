
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct kthread_worker {int work_list; struct task_struct* task; } ;


 scalar_t__ WARN_ON (int) ;
 int kfree (struct kthread_worker*) ;
 int kthread_flush_worker (struct kthread_worker*) ;
 int kthread_stop (struct task_struct*) ;
 int list_empty (int *) ;

void kthread_destroy_worker(struct kthread_worker *worker)
{
 struct task_struct *task;

 task = worker->task;
 if (WARN_ON(!task))
  return;

 kthread_flush_worker(worker);
 kthread_stop(task);
 WARN_ON(!list_empty(&worker->work_list));
 kfree(worker);
}

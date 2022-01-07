
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct worker {int flags; scalar_t__ sleeping; TYPE_1__* pool; } ;
struct task_struct {int dummy; } ;
struct TYPE_2__ {int nr_running; } ;


 int WORKER_NOT_RUNNING ;
 int atomic_inc (int *) ;
 struct worker* kthread_data (struct task_struct*) ;

void wq_worker_running(struct task_struct *task)
{
 struct worker *worker = kthread_data(task);

 if (!worker->sleeping)
  return;
 if (!(worker->flags & WORKER_NOT_RUNNING))
  atomic_inc(&worker->pool->nr_running);
 worker->sleeping = 0;
}

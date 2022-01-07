
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct kthread_worker {int task; int current_work; } ;
struct kthread_work {struct kthread_worker* worker; int node; } ;


 int kthread_insert_work_sanity_check (struct kthread_worker*,struct kthread_work*) ;
 scalar_t__ likely (int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int wake_up_process (int ) ;

__attribute__((used)) static void kthread_insert_work(struct kthread_worker *worker,
    struct kthread_work *work,
    struct list_head *pos)
{
 kthread_insert_work_sanity_check(worker, work);

 list_add_tail(&work->node, pos);
 work->worker = worker;
 if (!worker->current_work && likely(worker->task))
  wake_up_process(worker->task);
}

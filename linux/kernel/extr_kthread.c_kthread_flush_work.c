
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int next; } ;
struct kthread_worker {int lock; TYPE_1__ work_list; struct kthread_work* current_work; } ;
struct TYPE_4__ {int next; } ;
struct kthread_work {TYPE_2__ node; struct kthread_worker* worker; } ;
struct kthread_flush_work {int done; int work; int member_1; int member_0; } ;


 int COMPLETION_INITIALIZER_ONSTACK (int ) ;
 int KTHREAD_WORK_INIT (int ,int ) ;
 int WARN_ON_ONCE (int) ;
 int kthread_flush_work_fn ;
 int kthread_insert_work (struct kthread_worker*,int *,int ) ;
 int list_empty (TYPE_2__*) ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 int wait_for_completion (int *) ;

void kthread_flush_work(struct kthread_work *work)
{
 struct kthread_flush_work fwork = {
  KTHREAD_WORK_INIT(fwork.work, kthread_flush_work_fn),
  COMPLETION_INITIALIZER_ONSTACK(fwork.done),
 };
 struct kthread_worker *worker;
 bool noop = 0;

 worker = work->worker;
 if (!worker)
  return;

 raw_spin_lock_irq(&worker->lock);

 WARN_ON_ONCE(work->worker != worker);

 if (!list_empty(&work->node))
  kthread_insert_work(worker, &fwork.work, work->node.next);
 else if (worker->current_work == work)
  kthread_insert_work(worker, &fwork.work,
        worker->work_list.next);
 else
  noop = 1;

 raw_spin_unlock_irq(&worker->lock);

 if (!noop)
  wait_for_completion(&fwork.done);
}

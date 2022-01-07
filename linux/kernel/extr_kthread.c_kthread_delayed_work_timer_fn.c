
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct kthread_worker {int lock; int work_list; } ;
struct kthread_work {int node; struct kthread_worker* worker; } ;
struct kthread_delayed_work {struct kthread_work work; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 struct kthread_delayed_work* dwork ;
 struct kthread_delayed_work* from_timer (int ,struct timer_list*,int ) ;
 int kthread_insert_work (struct kthread_worker*,struct kthread_work*,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int timer ;

void kthread_delayed_work_timer_fn(struct timer_list *t)
{
 struct kthread_delayed_work *dwork = from_timer(dwork, t, timer);
 struct kthread_work *work = &dwork->work;
 struct kthread_worker *worker = work->worker;
 unsigned long flags;





 if (WARN_ON_ONCE(!worker))
  return;

 raw_spin_lock_irqsave(&worker->lock, flags);

 WARN_ON_ONCE(work->worker != worker);


 WARN_ON_ONCE(list_empty(&work->node));
 list_del_init(&work->node);
 kthread_insert_work(worker, work, &worker->work_list);

 raw_spin_unlock_irqrestore(&worker->lock, flags);
}

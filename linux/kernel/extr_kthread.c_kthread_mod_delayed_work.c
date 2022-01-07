
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int lock; } ;
struct kthread_work {scalar_t__ canceling; struct kthread_worker* worker; } ;
struct kthread_delayed_work {struct kthread_work work; } ;


 int WARN_ON_ONCE (int) ;
 int __kthread_cancel_work (struct kthread_work*,int,unsigned long*) ;
 int __kthread_queue_delayed_work (struct kthread_worker*,struct kthread_delayed_work*,unsigned long) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

bool kthread_mod_delayed_work(struct kthread_worker *worker,
         struct kthread_delayed_work *dwork,
         unsigned long delay)
{
 struct kthread_work *work = &dwork->work;
 unsigned long flags;
 int ret = 0;

 raw_spin_lock_irqsave(&worker->lock, flags);


 if (!work->worker)
  goto fast_queue;


 WARN_ON_ONCE(work->worker != worker);


 if (work->canceling)
  goto out;

 ret = __kthread_cancel_work(work, 1, &flags);
fast_queue:
 __kthread_queue_delayed_work(worker, dwork, delay);
out:
 raw_spin_unlock_irqrestore(&worker->lock, flags);
 return ret;
}

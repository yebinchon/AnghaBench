
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int lock; } ;
struct kthread_work {int dummy; } ;
struct kthread_delayed_work {struct kthread_work work; } ;


 int __kthread_queue_delayed_work (struct kthread_worker*,struct kthread_delayed_work*,unsigned long) ;
 int queuing_blocked (struct kthread_worker*,struct kthread_work*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

bool kthread_queue_delayed_work(struct kthread_worker *worker,
    struct kthread_delayed_work *dwork,
    unsigned long delay)
{
 struct kthread_work *work = &dwork->work;
 unsigned long flags;
 bool ret = 0;

 raw_spin_lock_irqsave(&worker->lock, flags);

 if (!queuing_blocked(worker, work)) {
  __kthread_queue_delayed_work(worker, dwork, delay);
  ret = 1;
 }

 raw_spin_unlock_irqrestore(&worker->lock, flags);
 return ret;
}

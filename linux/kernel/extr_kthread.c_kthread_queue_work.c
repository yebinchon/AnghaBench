
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int lock; int work_list; } ;
struct kthread_work {int dummy; } ;


 int kthread_insert_work (struct kthread_worker*,struct kthread_work*,int *) ;
 int queuing_blocked (struct kthread_worker*,struct kthread_work*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

bool kthread_queue_work(struct kthread_worker *worker,
   struct kthread_work *work)
{
 bool ret = 0;
 unsigned long flags;

 raw_spin_lock_irqsave(&worker->lock, flags);
 if (!queuing_blocked(worker, work)) {
  kthread_insert_work(worker, work, &worker->work_list);
  ret = 1;
 }
 raw_spin_unlock_irqrestore(&worker->lock, flags);
 return ret;
}

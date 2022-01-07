
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kthread_worker {int lock; struct kthread_work* current_work; } ;
struct kthread_work {int canceling; struct kthread_worker* worker; } ;


 int WARN_ON_ONCE (int) ;
 int __kthread_cancel_work (struct kthread_work*,int,unsigned long*) ;
 int kthread_flush_work (struct kthread_work*) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static bool __kthread_cancel_work_sync(struct kthread_work *work, bool is_dwork)
{
 struct kthread_worker *worker = work->worker;
 unsigned long flags;
 int ret = 0;

 if (!worker)
  goto out;

 raw_spin_lock_irqsave(&worker->lock, flags);

 WARN_ON_ONCE(work->worker != worker);

 ret = __kthread_cancel_work(work, is_dwork, &flags);

 if (worker->current_work != work)
  goto out_fast;





 work->canceling++;
 raw_spin_unlock_irqrestore(&worker->lock, flags);
 kthread_flush_work(work);
 raw_spin_lock_irqsave(&worker->lock, flags);
 work->canceling--;

out_fast:
 raw_spin_unlock_irqrestore(&worker->lock, flags);
out:
 return ret;
}

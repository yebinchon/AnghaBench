
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct workqueue_struct {int flags; scalar_t__ saved_max_active; int mutex; } ;
struct pool_workqueue {scalar_t__ max_active; scalar_t__ nr_active; TYPE_1__* pool; int delayed_works; struct workqueue_struct* wq; } ;
struct TYPE_2__ {int lock; } ;


 int WQ_FREEZABLE ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int pwq_activate_first_delayed (struct pool_workqueue*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_worker (TYPE_1__*) ;
 int workqueue_freezing ;

__attribute__((used)) static void pwq_adjust_max_active(struct pool_workqueue *pwq)
{
 struct workqueue_struct *wq = pwq->wq;
 bool freezable = wq->flags & WQ_FREEZABLE;
 unsigned long flags;


 lockdep_assert_held(&wq->mutex);


 if (!freezable && pwq->max_active == wq->saved_max_active)
  return;


 spin_lock_irqsave(&pwq->pool->lock, flags);






 if (!freezable || !workqueue_freezing) {
  pwq->max_active = wq->saved_max_active;

  while (!list_empty(&pwq->delayed_works) &&
         pwq->nr_active < pwq->max_active)
   pwq_activate_first_delayed(pwq);





  wake_up_worker(pwq->pool);
 } else {
  pwq->max_active = 0;
 }

 spin_unlock_irqrestore(&pwq->pool->lock, flags);
}

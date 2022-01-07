
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_workqueue {TYPE_1__* pool; } ;
struct TYPE_2__ {int lock; } ;


 int put_pwq (struct pool_workqueue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void put_pwq_unlocked(struct pool_workqueue *pwq)
{
 if (pwq) {




  spin_lock_irq(&pwq->pool->lock);
  put_pwq(pwq);
  spin_unlock_irq(&pwq->pool->lock);
 }
}

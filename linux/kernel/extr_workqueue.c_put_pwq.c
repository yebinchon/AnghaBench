
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pool_workqueue {int unbound_release_work; TYPE_2__* wq; int refcnt; TYPE_1__* pool; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ WARN_ON_ONCE (int) ;
 int WQ_UNBOUND ;
 scalar_t__ likely (int ) ;
 int lockdep_assert_held (int *) ;
 int schedule_work (int *) ;

__attribute__((used)) static void put_pwq(struct pool_workqueue *pwq)
{
 lockdep_assert_held(&pwq->pool->lock);
 if (likely(--pwq->refcnt))
  return;
 if (WARN_ON_ONCE(!(pwq->wq->flags & WQ_UNBOUND)))
  return;
 schedule_work(&pwq->unbound_release_work);
}

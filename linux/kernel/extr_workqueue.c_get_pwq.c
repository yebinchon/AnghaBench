
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pool_workqueue {scalar_t__ refcnt; TYPE_1__* pool; } ;
struct TYPE_2__ {int lock; } ;


 int WARN_ON_ONCE (int) ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void get_pwq(struct pool_workqueue *pwq)
{
 lockdep_assert_held(&pwq->pool->lock);
 WARN_ON_ONCE(pwq->refcnt <= 0);
 pwq->refcnt++;
}

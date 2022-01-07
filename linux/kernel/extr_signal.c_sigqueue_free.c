
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sigqueue {int flags; int list; } ;
typedef int spinlock_t ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int siglock; } ;


 int BUG_ON (int) ;
 int SIGQUEUE_PREALLOC ;
 int __sigqueue_free (struct sigqueue*) ;
 TYPE_2__* current ;
 int list_empty (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void sigqueue_free(struct sigqueue *q)
{
 unsigned long flags;
 spinlock_t *lock = &current->sighand->siglock;

 BUG_ON(!(q->flags & SIGQUEUE_PREALLOC));





 spin_lock_irqsave(lock, flags);
 q->flags &= ~SIGQUEUE_PREALLOC;




 if (!list_empty(&q->list))
  q = ((void*)0);
 spin_unlock_irqrestore(lock, flags);

 if (q)
  __sigqueue_free(q);
}

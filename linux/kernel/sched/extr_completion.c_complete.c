
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct completion {scalar_t__ done; TYPE_1__ wait; } ;


 int TASK_NORMAL ;
 scalar_t__ UINT_MAX ;
 int __wake_up_locked (TYPE_1__*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void complete(struct completion *x)
{
 unsigned long flags;

 spin_lock_irqsave(&x->wait.lock, flags);

 if (x->done != UINT_MAX)
  x->done++;
 __wake_up_locked(&x->wait, TASK_NORMAL, 1);
 spin_unlock_irqrestore(&x->wait.lock, flags);
}

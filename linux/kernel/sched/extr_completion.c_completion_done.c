
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct completion {TYPE_1__ wait; int done; } ;


 int READ_ONCE (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool completion_done(struct completion *x)
{
 unsigned long flags;

 if (!READ_ONCE(x->done))
  return 0;






 spin_lock_irqsave(&x->wait.lock, flags);
 spin_unlock_irqrestore(&x->wait.lock, flags);
 return 1;
}

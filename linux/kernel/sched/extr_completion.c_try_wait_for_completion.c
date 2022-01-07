
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; } ;
struct completion {scalar_t__ done; TYPE_1__ wait; } ;


 int READ_ONCE (scalar_t__) ;
 scalar_t__ UINT_MAX ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

bool try_wait_for_completion(struct completion *x)
{
 unsigned long flags;
 bool ret = 1;







 if (!READ_ONCE(x->done))
  return 0;

 spin_lock_irqsave(&x->wait.lock, flags);
 if (!x->done)
  ret = 0;
 else if (x->done != UINT_MAX)
  x->done--;
 spin_unlock_irqrestore(&x->wait.lock, flags);
 return ret;
}

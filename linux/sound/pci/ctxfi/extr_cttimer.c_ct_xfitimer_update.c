
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ct_timer {int reprogram; int lock; scalar_t__ irq_handling; } ;


 int ct_xfitimer_irq_stop (struct ct_timer*) ;
 int ct_xfitimer_reprogram (struct ct_timer*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void ct_xfitimer_update(struct ct_timer *atimer)
{
 unsigned long flags;

 spin_lock_irqsave(&atimer->lock, flags);
 if (atimer->irq_handling) {

  atimer->reprogram = 1;
  spin_unlock_irqrestore(&atimer->lock, flags);
  return;
 }

 ct_xfitimer_irq_stop(atimer);
 ct_xfitimer_reprogram(atimer, 0);
 spin_unlock_irqrestore(&atimer->lock, flags);
}

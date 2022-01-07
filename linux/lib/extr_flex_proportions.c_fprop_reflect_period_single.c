
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_single {unsigned int period; unsigned int events; int lock; } ;
struct fprop_global {unsigned int period; } ;


 unsigned int BITS_PER_LONG ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fprop_reflect_period_single(struct fprop_global *p,
     struct fprop_local_single *pl)
{
 unsigned int period = p->period;
 unsigned long flags;


 if (pl->period == period)
  return;
 raw_spin_lock_irqsave(&pl->lock, flags);

 if (pl->period >= period) {
  raw_spin_unlock_irqrestore(&pl->lock, flags);
  return;
 }

 if (period - pl->period < BITS_PER_LONG)
  pl->events >>= period - pl->period;
 else
  pl->events = 0;
 pl->period = period;
 raw_spin_unlock_irqrestore(&pl->lock, flags);
}

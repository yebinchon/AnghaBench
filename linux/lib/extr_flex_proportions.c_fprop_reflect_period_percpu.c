
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fprop_local_percpu {unsigned int period; int lock; int events; } ;
struct fprop_global {unsigned int period; } ;
typedef unsigned int s64 ;


 unsigned int BITS_PER_LONG ;
 unsigned int PROP_BATCH ;
 unsigned int nr_cpu_ids ;
 int percpu_counter_add_batch (int *,unsigned int,unsigned int) ;
 unsigned int percpu_counter_read (int *) ;
 int percpu_counter_set (int *,int ) ;
 unsigned int percpu_counter_sum (int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fprop_reflect_period_percpu(struct fprop_global *p,
     struct fprop_local_percpu *pl)
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

 if (period - pl->period < BITS_PER_LONG) {
  s64 val = percpu_counter_read(&pl->events);

  if (val < (nr_cpu_ids * PROP_BATCH))
   val = percpu_counter_sum(&pl->events);

  percpu_counter_add_batch(&pl->events,
   -val + (val >> (period-pl->period)), PROP_BATCH);
 } else
  percpu_counter_set(&pl->events, 0);
 pl->period = period;
 raw_spin_unlock_irqrestore(&pl->lock, flags);
}

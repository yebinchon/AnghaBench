
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct percpu_counter {int * counters; int lock; scalar_t__ count; } ;
typedef scalar_t__ s64 ;
typedef scalar_t__ s32 ;


 scalar_t__ __this_cpu_read (int ) ;
 int __this_cpu_sub (int ,scalar_t__) ;
 int preempt_disable () ;
 int preempt_enable () ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int this_cpu_add (int ,scalar_t__) ;

void percpu_counter_add_batch(struct percpu_counter *fbc, s64 amount, s32 batch)
{
 s64 count;

 preempt_disable();
 count = __this_cpu_read(*fbc->counters) + amount;
 if (count >= batch || count <= -batch) {
  unsigned long flags;
  raw_spin_lock_irqsave(&fbc->lock, flags);
  fbc->count += count;
  __this_cpu_sub(*fbc->counters, count - amount);
  raw_spin_unlock_irqrestore(&fbc->lock, flags);
 } else {
  this_cpu_add(*fbc->counters, amount);
 }
 preempt_enable();
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int flags; int function; } ;
struct timer_base {int lock; } ;


 int BUG_ON (int) ;
 int TIMER_BASEMASK ;
 int TIMER_MIGRATING ;
 int WRITE_ONCE (int,int) ;
 int debug_timer_activate (struct timer_list*) ;
 int forward_timer_base (struct timer_base*) ;
 struct timer_base* get_timer_cpu_base (int,int) ;
 int internal_add_timer (struct timer_base*,struct timer_list*) ;
 struct timer_base* lock_timer_base (struct timer_list*,unsigned long*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ timer_pending (struct timer_list*) ;

void add_timer_on(struct timer_list *timer, int cpu)
{
 struct timer_base *new_base, *base;
 unsigned long flags;

 BUG_ON(timer_pending(timer) || !timer->function);

 new_base = get_timer_cpu_base(timer->flags, cpu);






 base = lock_timer_base(timer, &flags);
 if (base != new_base) {
  timer->flags |= TIMER_MIGRATING;

  raw_spin_unlock(&base->lock);
  base = new_base;
  raw_spin_lock(&base->lock);
  WRITE_ONCE(timer->flags,
      (timer->flags & ~TIMER_BASEMASK) | cpu);
 }
 forward_timer_base(base);

 debug_timer_activate(timer);
 internal_add_timer(base, timer);
 raw_spin_unlock_irqrestore(&base->lock, flags);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_base {int must_forward_clk; int lock; int clk; } ;
struct hlist_head {int dummy; } ;


 int LVL_DEPTH ;
 int collect_expired_timers (struct timer_base*,struct hlist_head*) ;
 int expire_timers (struct timer_base*,struct hlist_head*) ;
 int jiffies ;
 int raw_spin_lock_irq (int *) ;
 int raw_spin_unlock_irq (int *) ;
 scalar_t__ time_after_eq (int ,int ) ;
 int timer_base_lock_expiry (struct timer_base*) ;
 int timer_base_unlock_expiry (struct timer_base*) ;

__attribute__((used)) static inline void __run_timers(struct timer_base *base)
{
 struct hlist_head heads[LVL_DEPTH];
 int levels;

 if (!time_after_eq(jiffies, base->clk))
  return;

 timer_base_lock_expiry(base);
 raw_spin_lock_irq(&base->lock);
 base->must_forward_clk = 0;

 while (time_after_eq(jiffies, base->clk)) {

  levels = collect_expired_timers(base, heads);
  base->clk++;

  while (levels--)
   expire_timers(base, heads + levels);
 }
 raw_spin_unlock_irq(&base->lock);
 timer_base_unlock_expiry(base);
}

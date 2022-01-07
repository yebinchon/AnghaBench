
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct timer_base {int lock; } ;


 int debug_assert_init (struct timer_list*) ;
 int detach_if_pending (struct timer_list*,struct timer_base*,int) ;
 struct timer_base* lock_timer_base (struct timer_list*,unsigned long*) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ timer_pending (struct timer_list*) ;

int del_timer(struct timer_list *timer)
{
 struct timer_base *base;
 unsigned long flags;
 int ret = 0;

 debug_assert_init(timer);

 if (timer_pending(timer)) {
  base = lock_timer_base(timer, &flags);
  ret = detach_if_pending(timer, base, 1);
  raw_spin_unlock_irqrestore(&base->lock, flags);
 }

 return ret;
}

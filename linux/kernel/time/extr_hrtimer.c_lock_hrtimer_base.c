
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hrtimer_clock_base {TYPE_1__* cpu_base; } ;
struct hrtimer {struct hrtimer_clock_base* base; } ;
struct TYPE_2__ {int lock; } ;


 int raw_spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static inline struct hrtimer_clock_base *
lock_hrtimer_base(const struct hrtimer *timer, unsigned long *flags)
{
 struct hrtimer_clock_base *base = timer->base;

 raw_spin_lock_irqsave(&base->cpu_base->lock, *flags);

 return base;
}

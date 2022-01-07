
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer {int dummy; } ;
typedef int ktime_t ;


 int CONFIG_TIME_LOW_RES ;
 scalar_t__ IS_ENABLED (int ) ;
 int hrtimer_expires_remaining (struct hrtimer const*) ;
 int hrtimer_expires_remaining_adjusted (struct hrtimer const*) ;
 int lock_hrtimer_base (struct hrtimer const*,unsigned long*) ;
 int unlock_hrtimer_base (struct hrtimer const*,unsigned long*) ;

ktime_t __hrtimer_get_remaining(const struct hrtimer *timer, bool adjust)
{
 unsigned long flags;
 ktime_t rem;

 lock_hrtimer_base(timer, &flags);
 if (IS_ENABLED(CONFIG_TIME_LOW_RES) && adjust)
  rem = hrtimer_expires_remaining_adjusted(timer);
 else
  rem = hrtimer_expires_remaining(timer);
 unlock_hrtimer_base(timer, &flags);

 return rem;
}

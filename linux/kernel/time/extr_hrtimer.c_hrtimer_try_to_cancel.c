
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int dummy; } ;


 int hrtimer_active (struct hrtimer*) ;
 int hrtimer_callback_running (struct hrtimer*) ;
 struct hrtimer_clock_base* lock_hrtimer_base (struct hrtimer*,unsigned long*) ;
 int remove_hrtimer (struct hrtimer*,struct hrtimer_clock_base*,int) ;
 int unlock_hrtimer_base (struct hrtimer*,unsigned long*) ;

int hrtimer_try_to_cancel(struct hrtimer *timer)
{
 struct hrtimer_clock_base *base;
 unsigned long flags;
 int ret = -1;







 if (!hrtimer_active(timer))
  return 0;

 base = lock_hrtimer_base(timer, &flags);

 if (!hrtimer_callback_running(timer))
  ret = remove_hrtimer(timer, base, 0);

 unlock_hrtimer_base(timer, &flags);

 return ret;

}

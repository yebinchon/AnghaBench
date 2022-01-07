
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hrtimer_clock_base {int dummy; } ;
struct hrtimer {int is_hard; int is_soft; } ;
typedef int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int CONFIG_PREEMPT_RT ;
 int const HRTIMER_MODE_HARD ;
 int const HRTIMER_MODE_SOFT ;
 int IS_ENABLED (int ) ;
 int WARN_ON_ONCE (int) ;
 scalar_t__ __hrtimer_start_range_ns (struct hrtimer*,int ,int ,int const,struct hrtimer_clock_base*) ;
 int hrtimer_reprogram (struct hrtimer*,int) ;
 struct hrtimer_clock_base* lock_hrtimer_base (struct hrtimer*,unsigned long*) ;
 int unlock_hrtimer_base (struct hrtimer*,unsigned long*) ;

void hrtimer_start_range_ns(struct hrtimer *timer, ktime_t tim,
       u64 delta_ns, const enum hrtimer_mode mode)
{
 struct hrtimer_clock_base *base;
 unsigned long flags;






 if (!IS_ENABLED(CONFIG_PREEMPT_RT))
  WARN_ON_ONCE(!(mode & HRTIMER_MODE_SOFT) ^ !timer->is_soft);
 else
  WARN_ON_ONCE(!(mode & HRTIMER_MODE_HARD) ^ !timer->is_hard);

 base = lock_hrtimer_base(timer, &flags);

 if (__hrtimer_start_range_ns(timer, tim, delta_ns, mode, base))
  hrtimer_reprogram(timer, 1);

 unlock_hrtimer_base(timer, &flags);
}

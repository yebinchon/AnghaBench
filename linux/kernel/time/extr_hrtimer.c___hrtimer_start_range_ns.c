
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct hrtimer_clock_base {int (* get_time ) () ;} ;
struct hrtimer {int dummy; } ;
typedef int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int const HRTIMER_MODE_PINNED ;
 int const HRTIMER_MODE_REL ;
 int enqueue_hrtimer (struct hrtimer*,struct hrtimer_clock_base*,int const) ;
 int hrtimer_set_expires_range_ns (struct hrtimer*,int ,int ) ;
 int hrtimer_update_lowres (struct hrtimer*,int ,int const) ;
 int ktime_add_safe (int ,int ) ;
 int remove_hrtimer (struct hrtimer*,struct hrtimer_clock_base*,int) ;
 int stub1 () ;
 struct hrtimer_clock_base* switch_hrtimer_base (struct hrtimer*,struct hrtimer_clock_base*,int const) ;

__attribute__((used)) static int __hrtimer_start_range_ns(struct hrtimer *timer, ktime_t tim,
        u64 delta_ns, const enum hrtimer_mode mode,
        struct hrtimer_clock_base *base)
{
 struct hrtimer_clock_base *new_base;


 remove_hrtimer(timer, base, 1);

 if (mode & HRTIMER_MODE_REL)
  tim = ktime_add_safe(tim, base->get_time());

 tim = hrtimer_update_lowres(timer, tim, mode);

 hrtimer_set_expires_range_ns(timer, tim, delta_ns);


 new_base = switch_hrtimer_base(timer, base, mode & HRTIMER_MODE_PINNED);

 return enqueue_hrtimer(timer, new_base, mode);
}

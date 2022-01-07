
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hrtimer {TYPE_1__* base; int function; } ;
struct TYPE_6__ {struct hrtimer timer; } ;
struct TYPE_5__ {TYPE_3__ real; } ;
struct k_itimer {scalar_t__ it_clock; TYPE_2__ it; int * kclock; } ;
typedef int ktime_t ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
struct TYPE_4__ {int (* get_time ) () ;} ;


 scalar_t__ CLOCK_REALTIME ;
 int HRTIMER_MODE_ABS ;
 int HRTIMER_MODE_REL ;
 int clock_monotonic ;
 int clock_realtime ;
 int hrtimer_init (struct hrtimer*,scalar_t__,int) ;
 int hrtimer_set_expires (struct hrtimer*,int ) ;
 int hrtimer_start_expires (struct hrtimer*,int) ;
 int ktime_add_safe (int ,int ) ;
 int posix_timer_fn ;
 int stub1 () ;

__attribute__((used)) static void common_hrtimer_arm(struct k_itimer *timr, ktime_t expires,
          bool absolute, bool sigev_none)
{
 struct hrtimer *timer = &timr->it.real.timer;
 enum hrtimer_mode mode;

 mode = absolute ? HRTIMER_MODE_ABS : HRTIMER_MODE_REL;
 if (timr->it_clock == CLOCK_REALTIME)
  timr->kclock = absolute ? &clock_realtime : &clock_monotonic;

 hrtimer_init(&timr->it.real.timer, timr->it_clock, mode);
 timr->it.real.timer.function = posix_timer_fn;

 if (!absolute)
  expires = ktime_add_safe(expires, timer->base->get_time());
 hrtimer_set_expires(timer, expires);

 if (!sigev_none)
  hrtimer_start_expires(timer, HRTIMER_MODE_ABS);
}

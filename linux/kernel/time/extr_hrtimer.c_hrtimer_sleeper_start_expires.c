
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ is_hard; } ;
struct hrtimer_sleeper {TYPE_1__ timer; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;


 int CONFIG_PREEMPT_RT ;
 int HRTIMER_MODE_HARD ;
 scalar_t__ IS_ENABLED (int ) ;
 int hrtimer_start_expires (TYPE_1__*,int) ;

void hrtimer_sleeper_start_expires(struct hrtimer_sleeper *sl,
       enum hrtimer_mode mode)
{







 if (IS_ENABLED(CONFIG_PREEMPT_RT) && sl->timer.is_hard)
  mode |= HRTIMER_MODE_HARD;

 hrtimer_start_expires(&sl->timer, mode);
}

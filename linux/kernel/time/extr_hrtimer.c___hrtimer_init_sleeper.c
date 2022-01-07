
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int function; } ;
struct hrtimer_sleeper {int task; TYPE_1__ timer; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
typedef int clockid_t ;


 int CONFIG_PREEMPT_RT ;
 int HRTIMER_MODE_HARD ;
 int HRTIMER_MODE_SOFT ;
 scalar_t__ IS_ENABLED (int ) ;
 int __hrtimer_init (TYPE_1__*,int ,int) ;
 int current ;
 int hrtimer_wakeup ;
 scalar_t__ task_is_realtime (int ) ;

__attribute__((used)) static void __hrtimer_init_sleeper(struct hrtimer_sleeper *sl,
       clockid_t clock_id, enum hrtimer_mode mode)
{
 if (IS_ENABLED(CONFIG_PREEMPT_RT)) {
  if (task_is_realtime(current) && !(mode & HRTIMER_MODE_SOFT))
   mode |= HRTIMER_MODE_HARD;
 }

 __hrtimer_init(&sl->timer, clock_id, mode);
 sl->timer.function = hrtimer_wakeup;
 sl->task = current;
}

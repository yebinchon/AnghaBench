
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrtimer_sleeper {int timer; } ;
typedef enum hrtimer_mode { ____Placeholder_hrtimer_mode } hrtimer_mode ;
typedef int clockid_t ;


 int __hrtimer_init_sleeper (struct hrtimer_sleeper*,int ,int) ;
 int debug_init (int *,int ,int) ;

void hrtimer_init_sleeper(struct hrtimer_sleeper *sl, clockid_t clock_id,
     enum hrtimer_mode mode)
{
 debug_init(&sl->timer, clock_id, mode);
 __hrtimer_init_sleeper(sl, clock_id, mode);

}

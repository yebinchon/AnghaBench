
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hrtimer {int dummy; } ;
struct TYPE_3__ {struct hrtimer timer; } ;
struct TYPE_4__ {TYPE_1__ real; } ;
struct k_itimer {TYPE_2__ it; } ;
typedef int ktime_t ;


 int __hrtimer_expires_remaining_adjusted (struct hrtimer*,int ) ;

__attribute__((used)) static ktime_t common_hrtimer_remaining(struct k_itimer *timr, ktime_t now)
{
 struct hrtimer *timer = &timr->it.real.timer;

 return __hrtimer_expires_remaining_adjusted(timer, now);
}

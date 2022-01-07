
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hrtimer {int dummy; } ;
struct TYPE_3__ {struct hrtimer timer; } ;
struct TYPE_4__ {TYPE_1__ real; } ;
struct k_itimer {int it_interval; TYPE_2__ it; } ;
typedef int s64 ;
typedef int ktime_t ;


 int hrtimer_forward (struct hrtimer*,int ,int ) ;

__attribute__((used)) static s64 common_hrtimer_forward(struct k_itimer *timr, ktime_t now)
{
 struct hrtimer *timer = &timr->it.real.timer;

 return hrtimer_forward(timer, now, timr->it_interval);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hrtimer {TYPE_3__* base; } ;
struct TYPE_4__ {struct hrtimer timer; } ;
struct TYPE_5__ {TYPE_1__ real; } ;
struct k_itimer {int it_interval; int it_overrun; TYPE_2__ it; } ;
struct TYPE_6__ {int (* get_time ) () ;} ;


 scalar_t__ hrtimer_forward (struct hrtimer*,int ,int ) ;
 int hrtimer_restart (struct hrtimer*) ;
 int stub1 () ;

__attribute__((used)) static void common_hrtimer_rearm(struct k_itimer *timr)
{
 struct hrtimer *timer = &timr->it.real.timer;

 timr->it_overrun += hrtimer_forward(timer, timer->base->get_time(),
         timr->it_interval);
 hrtimer_restart(timer);
}

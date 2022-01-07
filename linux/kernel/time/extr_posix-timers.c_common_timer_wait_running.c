
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ real; } ;
struct k_itimer {TYPE_2__ it; } ;


 int hrtimer_cancel_wait_running (int *) ;

__attribute__((used)) static void common_timer_wait_running(struct k_itimer *timer)
{
 hrtimer_cancel_wait_running(&timer->it.real.timer);
}

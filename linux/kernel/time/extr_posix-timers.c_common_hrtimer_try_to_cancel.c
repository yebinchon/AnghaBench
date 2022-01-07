
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int timer; } ;
struct TYPE_4__ {TYPE_1__ real; } ;
struct k_itimer {TYPE_2__ it; } ;


 int hrtimer_try_to_cancel (int *) ;

__attribute__((used)) static int common_hrtimer_try_to_cancel(struct k_itimer *timr)
{
 return hrtimer_try_to_cancel(&timr->it.real.timer);
}

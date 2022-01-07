
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hw {int (* set_timer_irq ) (struct hw*,int) ;int (* set_timer_tick ) (struct hw*,int) ;} ;
struct ct_timer {int running; TYPE_1__* atc; } ;
struct TYPE_2__ {struct hw* hw; } ;


 int MAX_TICKS ;
 int stub1 (struct hw*,int) ;
 int stub2 (struct hw*,int) ;

__attribute__((used)) static void ct_xfitimer_irq_rearm(struct ct_timer *atimer, int ticks)
{
 struct hw *hw = atimer->atc->hw;
 if (ticks > MAX_TICKS)
  ticks = MAX_TICKS;
 hw->set_timer_tick(hw, ticks);
 if (!atimer->running)
  hw->set_timer_irq(hw, 1);
 atimer->running = 1;
}

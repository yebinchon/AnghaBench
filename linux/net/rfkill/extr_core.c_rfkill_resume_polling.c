
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfkill {int polling_paused; int poll_work; scalar_t__ suspended; TYPE_1__* ops; } ;
struct TYPE_2__ {int poll; } ;


 int BUG_ON (int) ;
 int queue_delayed_work (int ,int *,int ) ;
 int system_power_efficient_wq ;

void rfkill_resume_polling(struct rfkill *rfkill)
{
 BUG_ON(!rfkill);

 if (!rfkill->ops->poll)
  return;

 rfkill->polling_paused = 0;

 if (rfkill->suspended)
  return;

 queue_delayed_work(system_power_efficient_wq,
      &rfkill->poll_work, 0);
}

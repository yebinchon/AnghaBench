
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfkill {int polling_paused; int poll_work; TYPE_1__* ops; } ;
struct TYPE_2__ {int poll; } ;


 int BUG_ON (int) ;
 int cancel_delayed_work_sync (int *) ;

void rfkill_pause_polling(struct rfkill *rfkill)
{
 BUG_ON(!rfkill);

 if (!rfkill->ops->poll)
  return;

 rfkill->polling_paused = 1;
 cancel_delayed_work_sync(&rfkill->poll_work);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfkill {int registered; int node; int dev; int sync_work; int uevent_work; int poll_work; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ poll; } ;


 int BUG_ON (int) ;
 int RFKILL_OP_DEL ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int device_del (int *) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rfkill_global_led_trigger_event () ;
 int rfkill_global_mutex ;
 int rfkill_led_trigger_unregister (struct rfkill*) ;
 int rfkill_send_events (struct rfkill*,int ) ;

void rfkill_unregister(struct rfkill *rfkill)
{
 BUG_ON(!rfkill);

 if (rfkill->ops->poll)
  cancel_delayed_work_sync(&rfkill->poll_work);

 cancel_work_sync(&rfkill->uevent_work);
 cancel_work_sync(&rfkill->sync_work);

 rfkill->registered = 0;

 device_del(&rfkill->dev);

 mutex_lock(&rfkill_global_mutex);
 rfkill_send_events(rfkill, RFKILL_OP_DEL);
 list_del_init(&rfkill->node);
 rfkill_global_led_trigger_event();
 mutex_unlock(&rfkill_global_mutex);

 rfkill_led_trigger_unregister(rfkill);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_local {int ifs_timer; int workqueue; } ;


 int drv_stop (struct ieee802154_local*) ;
 int flush_workqueue (int ) ;
 int hrtimer_cancel (int *) ;

void ieee802154_stop_device(struct ieee802154_local *local)
{
 flush_workqueue(local->workqueue);
 hrtimer_cancel(&local->ifs_timer);
 drv_stop(local);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802154_local {int phy; int workqueue; int tasklet; } ;
struct ieee802154_hw {int dummy; } ;


 int destroy_workqueue (int ) ;
 int flush_workqueue (int ) ;
 struct ieee802154_local* hw_to_local (struct ieee802154_hw*) ;
 int ieee802154_remove_interfaces (struct ieee802154_local*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int tasklet_kill (int *) ;
 int wpan_phy_unregister (int ) ;

void ieee802154_unregister_hw(struct ieee802154_hw *hw)
{
 struct ieee802154_local *local = hw_to_local(hw);

 tasklet_kill(&local->tasklet);
 flush_workqueue(local->workqueue);

 rtnl_lock();

 ieee802154_remove_interfaces(local);

 rtnl_unlock();

 destroy_workqueue(local->workqueue);
 wpan_phy_unregister(local->phy);
}

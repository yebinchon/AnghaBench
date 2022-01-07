
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dev; } ;
struct cfg802154_registered_device {int opencount; int list; int wpan_dev_list; int dev_wait; } ;


 int WARN_ON (int) ;
 int cfg802154_rdev_list_generation ;
 int device_del (int *) ;
 int list_del_rcu (int *) ;
 int list_empty (int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int synchronize_rcu () ;
 int wait_event (int ,int ) ;
 struct cfg802154_registered_device* wpan_phy_to_rdev (struct wpan_phy*) ;

void wpan_phy_unregister(struct wpan_phy *phy)
{
 struct cfg802154_registered_device *rdev = wpan_phy_to_rdev(phy);

 wait_event(rdev->dev_wait, ({
  int __count;
  rtnl_lock();
  __count = rdev->opencount;
  rtnl_unlock();
  __count == 0; }));

 rtnl_lock();



 WARN_ON(!list_empty(&rdev->wpan_dev_list));




 list_del_rcu(&rdev->list);
 synchronize_rcu();

 cfg802154_rdev_list_generation++;

 device_del(&phy->dev);

 rtnl_unlock();
}

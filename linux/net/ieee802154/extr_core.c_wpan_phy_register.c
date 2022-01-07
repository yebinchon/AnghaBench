
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dev; } ;
struct cfg802154_registered_device {int list; } ;


 int cfg802154_rdev_list ;
 int cfg802154_rdev_list_generation ;
 int device_add (int *) ;
 int list_add_rcu (int *,int *) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct cfg802154_registered_device* wpan_phy_to_rdev (struct wpan_phy*) ;

int wpan_phy_register(struct wpan_phy *phy)
{
 struct cfg802154_registered_device *rdev = wpan_phy_to_rdev(phy);
 int ret;

 rtnl_lock();
 ret = device_add(&phy->dev);
 if (ret) {
  rtnl_unlock();
  return ret;
 }

 list_add_rcu(&rdev->list, &cfg802154_rdev_list);
 cfg802154_rdev_list_generation++;


 rtnl_unlock();



 return 0;
}

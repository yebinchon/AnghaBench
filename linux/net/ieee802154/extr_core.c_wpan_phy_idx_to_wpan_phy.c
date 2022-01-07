
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct cfg802154_registered_device {struct wpan_phy wpan_phy; } ;


 int ASSERT_RTNL () ;
 struct cfg802154_registered_device* cfg802154_rdev_by_wpan_phy_idx (int) ;

struct wpan_phy *wpan_phy_idx_to_wpan_phy(int wpan_phy_idx)
{
 struct cfg802154_registered_device *rdev;

 ASSERT_RTNL();

 rdev = cfg802154_rdev_by_wpan_phy_idx(wpan_phy_idx);
 if (!rdev)
  return ((void*)0);
 return &rdev->wpan_phy;
}

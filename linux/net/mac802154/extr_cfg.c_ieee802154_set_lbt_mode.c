
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct wpan_dev {int lbt; } ;


 int ASSERT_RTNL () ;

__attribute__((used)) static int
ieee802154_set_lbt_mode(struct wpan_phy *wpan_phy, struct wpan_dev *wpan_dev,
   bool mode)
{
 ASSERT_RTNL();

 wpan_dev->lbt = mode;
 return 0;
}

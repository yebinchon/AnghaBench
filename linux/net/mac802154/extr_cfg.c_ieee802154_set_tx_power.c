
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int transmit_power; } ;
struct ieee802154_local {int dummy; } ;
typedef int s32 ;


 int ASSERT_RTNL () ;
 int drv_set_tx_power (struct ieee802154_local*,int ) ;
 struct ieee802154_local* wpan_phy_priv (struct wpan_phy*) ;

__attribute__((used)) static int
ieee802154_set_tx_power(struct wpan_phy *wpan_phy, s32 power)
{
 struct ieee802154_local *local = wpan_phy_priv(wpan_phy);
 int ret;

 ASSERT_RTNL();

 if (wpan_phy->transmit_power == power)
  return 0;

 ret = drv_set_tx_power(local, power);
 if (!ret)
  wpan_phy->transmit_power = power;

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int cca_ed_level; } ;
struct ieee802154_local {int dummy; } ;
typedef int s32 ;


 int ASSERT_RTNL () ;
 int drv_set_cca_ed_level (struct ieee802154_local*,int ) ;
 struct ieee802154_local* wpan_phy_priv (struct wpan_phy*) ;

__attribute__((used)) static int
ieee802154_set_cca_ed_level(struct wpan_phy *wpan_phy, s32 ed_level)
{
 struct ieee802154_local *local = wpan_phy_priv(wpan_phy);
 int ret;

 ASSERT_RTNL();

 if (wpan_phy->cca_ed_level == ed_level)
  return 0;

 ret = drv_set_cca_ed_level(local, ed_level);
 if (!ret)
  wpan_phy->cca_ed_level = ed_level;

 return ret;
}

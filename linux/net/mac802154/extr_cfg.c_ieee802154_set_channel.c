
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u8 ;
struct wpan_phy {void* current_page; void* current_channel; } ;
struct ieee802154_local {int dummy; } ;


 int ASSERT_RTNL () ;
 int drv_set_channel (struct ieee802154_local*,void*,void*) ;
 struct ieee802154_local* wpan_phy_priv (struct wpan_phy*) ;

__attribute__((used)) static int
ieee802154_set_channel(struct wpan_phy *wpan_phy, u8 page, u8 channel)
{
 struct ieee802154_local *local = wpan_phy_priv(wpan_phy);
 int ret;

 ASSERT_RTNL();

 if (wpan_phy->current_page == page &&
     wpan_phy->current_channel == channel)
  return 0;

 ret = drv_set_channel(local, page, channel);
 if (!ret) {
  wpan_phy->current_page = page;
  wpan_phy->current_channel = channel;
 }

 return ret;
}

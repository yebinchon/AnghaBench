
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u8 ;
struct net_device {scalar_t__ type; } ;
struct ieee802154_sub_if_data {struct ieee802154_local* local; } ;
struct ieee802154_local {TYPE_1__* phy; } ;
struct TYPE_2__ {void* current_page; void* current_channel; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int ASSERT_RTNL () ;
 int BUG_ON (int) ;
 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int drv_set_channel (struct ieee802154_local*,void*,void*) ;
 int pr_debug (char*) ;

void mac802154_dev_set_page_channel(struct net_device *dev, u8 page, u8 chan)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct ieee802154_local *local = sdata->local;
 int res;

 ASSERT_RTNL();

 BUG_ON(dev->type != ARPHRD_IEEE802154);

 res = drv_set_channel(local, page, chan);
 if (res) {
  pr_debug("set_channel failed\n");
 } else {
  local->phy->current_channel = chan;
  local->phy->current_page = page;
 }
}

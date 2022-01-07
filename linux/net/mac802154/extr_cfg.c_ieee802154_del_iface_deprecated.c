
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_phy {int dummy; } ;
struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {int dummy; } ;


 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee802154_if_remove (struct ieee802154_sub_if_data*) ;

__attribute__((used)) static void ieee802154_del_iface_deprecated(struct wpan_phy *wpan_phy,
         struct net_device *dev)
{
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);

 ieee802154_if_remove(sdata);
}

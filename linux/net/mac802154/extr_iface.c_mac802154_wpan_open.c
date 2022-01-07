
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_dev {int iftype; } ;
struct net_device {int dummy; } ;
struct ieee802154_sub_if_data {struct wpan_dev wpan_dev; } ;


 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int ieee802154_check_concurrent_iface (struct ieee802154_sub_if_data*,int ) ;
 int mac802154_slave_open (struct net_device*) ;

__attribute__((used)) static int mac802154_wpan_open(struct net_device *dev)
{
 int rc;
 struct ieee802154_sub_if_data *sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 struct wpan_dev *wpan_dev = &sdata->wpan_dev;

 rc = ieee802154_check_concurrent_iface(sdata, wpan_dev->iftype);
 if (rc < 0)
  return rc;

 return mac802154_slave_open(dev);
}

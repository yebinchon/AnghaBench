
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int name; TYPE_2__* ieee802154_ptr; } ;
struct ieee802154_sub_if_data {int name; } ;
struct TYPE_4__ {TYPE_1__* wpan_phy; } ;
struct TYPE_3__ {scalar_t__ privid; } ;


 struct ieee802154_sub_if_data* IEEE802154_DEV_TO_SUB_IF (struct net_device*) ;
 int IFNAMSIZ ;
 unsigned long NETDEV_CHANGENAME ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 scalar_t__ mac802154_wpan_phy_privid ;
 int memcpy (int ,int ,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int netdev_notify(struct notifier_block *nb,
    unsigned long state, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct ieee802154_sub_if_data *sdata;

 if (state != NETDEV_CHANGENAME)
  return NOTIFY_DONE;

 if (!dev->ieee802154_ptr || !dev->ieee802154_ptr->wpan_phy)
  return NOTIFY_DONE;

 if (dev->ieee802154_ptr->wpan_phy->privid != mac802154_wpan_phy_privid)
  return NOTIFY_DONE;

 sdata = IEEE802154_DEV_TO_SUB_IF(dev);
 memcpy(sdata->name, dev->name, IFNAMSIZ);

 return NOTIFY_OK;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int name; TYPE_2__* ieee80211_ptr; } ;
struct ieee80211_sub_if_data {int name; } ;
struct TYPE_4__ {TYPE_1__* wiphy; } ;
struct TYPE_3__ {scalar_t__ privid; } ;


 struct ieee80211_sub_if_data* IEEE80211_DEV_TO_SUB_IF (struct net_device*) ;
 int IFNAMSIZ ;
 unsigned long NETDEV_CHANGENAME ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int ieee80211_debugfs_rename_netdev (struct ieee80211_sub_if_data*) ;
 scalar_t__ mac80211_wiphy_privid ;
 int memcpy (int ,int ,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int netdev_notify(struct notifier_block *nb,
    unsigned long state, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct ieee80211_sub_if_data *sdata;

 if (state != NETDEV_CHANGENAME)
  return NOTIFY_DONE;

 if (!dev->ieee80211_ptr || !dev->ieee80211_ptr->wiphy)
  return NOTIFY_DONE;

 if (dev->ieee80211_ptr->wiphy->privid != mac80211_wiphy_privid)
  return NOTIFY_DONE;

 sdata = IEEE80211_DEV_TO_SUB_IF(dev);
 memcpy(sdata->name, dev->name, IFNAMSIZ);
 ieee80211_debugfs_rename_netdev(sdata);

 return NOTIFY_OK;
}

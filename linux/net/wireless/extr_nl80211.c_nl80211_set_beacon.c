
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; int beacon_interval; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct cfg80211_beacon_data {int dummy; } ;
struct TYPE_2__ {int change_beacon; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_AP ;
 scalar_t__ NL80211_IFTYPE_P2P_GO ;
 int nl80211_parse_beacon (struct net_device*,int ,struct cfg80211_beacon_data*) ;
 int rdev_change_beacon (struct net_device*,struct net_device*,struct cfg80211_beacon_data*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_set_beacon(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 struct cfg80211_beacon_data params;
 int err;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_AP &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_P2P_GO)
  return -EOPNOTSUPP;

 if (!rdev->ops->change_beacon)
  return -EOPNOTSUPP;

 if (!wdev->beacon_interval)
  return -EINVAL;

 err = nl80211_parse_beacon(rdev, info->attrs, &params);
 if (err)
  return err;

 wdev_lock(wdev);
 err = rdev_change_beacon(rdev, dev, &params);
 wdev_unlock(wdev);

 return err;
}

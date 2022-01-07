
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; struct wireless_dev* ieee80211_ptr; } ;
struct TYPE_2__ {int set_wds_peer; } ;


 int EBUSY ;
 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 scalar_t__ NL80211_IFTYPE_WDS ;
 scalar_t__ netif_running (struct net_device*) ;
 int * nla_data (int ) ;
 int rdev_set_wds_peer (struct net_device*,struct net_device*,int const*) ;

__attribute__((used)) static int nl80211_set_wds_peer(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 const u8 *bssid;

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 if (netif_running(dev))
  return -EBUSY;

 if (!rdev->ops->set_wds_peer)
  return -EOPNOTSUPP;

 if (wdev->iftype != NL80211_IFTYPE_WDS)
  return -EOPNOTSUPP;

 bssid = nla_data(info->attrs[NL80211_ATTR_MAC]);
 return rdev_set_wds_peer(rdev, dev, bssid);
}

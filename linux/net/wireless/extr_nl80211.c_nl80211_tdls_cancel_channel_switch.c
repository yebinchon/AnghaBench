
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wireless_dev {int iftype; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int features; } ;
struct net_device {struct wireless_dev* ieee80211_ptr; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {struct wireless_dev* ieee80211_ptr; TYPE_2__ wiphy; TYPE_1__* ops; } ;
struct TYPE_3__ {int tdls_cancel_channel_switch; int tdls_channel_switch; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_FEATURE_TDLS_CHANNEL_SWITCH ;


 int * nla_data (int ) ;
 int rdev_tdls_cancel_channel_switch (struct net_device*,struct net_device*,int const*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;

__attribute__((used)) static int nl80211_tdls_cancel_channel_switch(struct sk_buff *skb,
           struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 const u8 *addr;

 if (!rdev->ops->tdls_channel_switch ||
     !rdev->ops->tdls_cancel_channel_switch ||
     !(rdev->wiphy.features & NL80211_FEATURE_TDLS_CHANNEL_SWITCH))
  return -EOPNOTSUPP;

 switch (dev->ieee80211_ptr->iftype) {
 case 128:
 case 129:
  break;
 default:
  return -EOPNOTSUPP;
 }

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 addr = nla_data(info->attrs[NL80211_ATTR_MAC]);

 wdev_lock(wdev);
 rdev_tdls_cancel_channel_switch(rdev, dev, addr);
 wdev_unlock(wdev);

 return 0;
}

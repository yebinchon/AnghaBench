
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wireless_dev {scalar_t__ iftype; } ;
struct sk_buff {int dummy; } ;
struct net_device {int wiphy; struct wireless_dev* ieee80211_ptr; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {int wiphy; struct wireless_dev* ieee80211_ptr; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 int NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X ;
 scalar_t__ NL80211_IFTYPE_P2P_CLIENT ;
 scalar_t__ NL80211_IFTYPE_STATION ;
 int * nla_data (int ) ;
 int rdev_del_pmk (struct net_device*,struct net_device*,int const*) ;
 int wdev_lock (struct wireless_dev*) ;
 int wdev_unlock (struct wireless_dev*) ;
 int wiphy_ext_feature_isset (int *,int ) ;

__attribute__((used)) static int nl80211_del_pmk(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wireless_dev *wdev = dev->ieee80211_ptr;
 const u8 *aa;
 int ret;

 if (wdev->iftype != NL80211_IFTYPE_STATION &&
     wdev->iftype != NL80211_IFTYPE_P2P_CLIENT)
  return -EOPNOTSUPP;

 if (!wiphy_ext_feature_isset(&rdev->wiphy,
         NL80211_EXT_FEATURE_4WAY_HANDSHAKE_STA_1X))
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 wdev_lock(wdev);
 aa = nla_data(info->attrs[NL80211_ATTR_MAC]);
 ret = rdev_del_pmk(rdev, dev, aa);
 wdev_unlock(wdev);

 return ret;
}

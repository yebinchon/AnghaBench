
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {scalar_t__ iftype; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {scalar_t__ iftype; TYPE_1__* ops; } ;
struct TYPE_2__ {int stop_p2p_device; } ;


 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_P2P_DEVICE ;
 int cfg80211_stop_p2p_device (struct wireless_dev*,struct wireless_dev*) ;

__attribute__((used)) static int nl80211_stop_p2p_device(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];

 if (wdev->iftype != NL80211_IFTYPE_P2P_DEVICE)
  return -EOPNOTSUPP;

 if (!rdev->ops->stop_p2p_device)
  return -EOPNOTSUPP;

 cfg80211_stop_p2p_device(rdev, wdev);

 return 0;
}

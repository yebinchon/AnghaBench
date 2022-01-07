
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ iftype; } ;
struct TYPE_3__ {int leave_ibss; } ;


 int EOPNOTSUPP ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 int cfg80211_leave_ibss (struct net_device*,struct net_device*,int) ;

__attribute__((used)) static int nl80211_leave_ibss(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];

 if (!rdev->ops->leave_ibss)
  return -EOPNOTSUPP;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_ADHOC)
  return -EOPNOTSUPP;

 return cfg80211_leave_ibss(rdev, dev, 0);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ops; TYPE_1__* ieee80211_ptr; } ;
typedef int mcast_rate ;
struct TYPE_4__ {int set_mcast_rate; } ;
struct TYPE_3__ {scalar_t__ iftype; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MCAST_RATE ;
 scalar_t__ NL80211_IFTYPE_ADHOC ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 scalar_t__ NL80211_IFTYPE_OCB ;
 int NUM_NL80211_BANDS ;
 int memset (int*,int ,int) ;
 int nl80211_parse_mcast_rate (struct net_device*,int*,int ) ;
 int nla_get_u32 (int ) ;
 int rdev_set_mcast_rate (struct net_device*,struct net_device*,int*) ;

__attribute__((used)) static int nl80211_set_mcast_rate(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 int mcast_rate[NUM_NL80211_BANDS];
 u32 nla_rate;
 int err;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_ADHOC &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT &&
     dev->ieee80211_ptr->iftype != NL80211_IFTYPE_OCB)
  return -EOPNOTSUPP;

 if (!rdev->ops->set_mcast_rate)
  return -EOPNOTSUPP;

 memset(mcast_rate, 0, sizeof(mcast_rate));

 if (!info->attrs[NL80211_ATTR_MCAST_RATE])
  return -EINVAL;

 nla_rate = nla_get_u32(info->attrs[NL80211_ATTR_MCAST_RATE]);
 if (!nl80211_parse_mcast_rate(rdev, mcast_rate, nla_rate))
  return -EINVAL;

 err = rdev_set_mcast_rate(rdev, dev, mcast_rate);

 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ieee80211_ptr; TYPE_1__* ops; } ;
struct TYPE_4__ {scalar_t__ iftype; } ;
struct TYPE_3__ {int change_mpath; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_MPATH_NEXT_HOP ;
 scalar_t__ NL80211_IFTYPE_MESH_POINT ;
 int * nla_data (int ) ;
 int rdev_change_mpath (struct net_device*,struct net_device*,int *,int *) ;

__attribute__((used)) static int nl80211_set_mpath(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 u8 *dst = ((void*)0);
 u8 *next_hop = ((void*)0);

 if (!info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 if (!info->attrs[NL80211_ATTR_MPATH_NEXT_HOP])
  return -EINVAL;

 dst = nla_data(info->attrs[NL80211_ATTR_MAC]);
 next_hop = nla_data(info->attrs[NL80211_ATTR_MPATH_NEXT_HOP]);

 if (!rdev->ops->change_mpath)
  return -EOPNOTSUPP;

 if (dev->ieee80211_ptr->iftype != NL80211_IFTYPE_MESH_POINT)
  return -EOPNOTSUPP;

 return rdev_change_mpath(rdev, dev, dst, next_hop);
}

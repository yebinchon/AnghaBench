
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int set_noack_map; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_NOACK_MAP ;
 int nla_get_u16 (int ) ;
 int rdev_set_noack_map (struct net_device*,struct net_device*,int ) ;

__attribute__((used)) static int nl80211_set_noack_map(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 u16 noack_map;

 if (!info->attrs[NL80211_ATTR_NOACK_MAP])
  return -EINVAL;

 if (!rdev->ops->set_noack_map)
  return -EOPNOTSUPP;

 noack_map = nla_get_u16(info->attrs[NL80211_ATTR_NOACK_MAP]);

 return rdev_set_noack_map(rdev, dev, noack_map);
}

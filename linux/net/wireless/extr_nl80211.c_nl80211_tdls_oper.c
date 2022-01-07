
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {int flags; } ;
struct net_device {TYPE_2__* ops; TYPE_1__ wiphy; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg80211_registered_device {TYPE_2__* ops; TYPE_1__ wiphy; } ;
typedef enum nl80211_tdls_operation { ____Placeholder_nl80211_tdls_operation } nl80211_tdls_operation ;
struct TYPE_4__ {int tdls_oper; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_TDLS_OPERATION ;
 int WIPHY_FLAG_SUPPORTS_TDLS ;
 int * nla_data (int ) ;
 int nla_get_u8 (int ) ;
 int rdev_tdls_oper (struct net_device*,struct net_device*,int *,int) ;

__attribute__((used)) static int nl80211_tdls_oper(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 enum nl80211_tdls_operation operation;
 u8 *peer;

 if (!(rdev->wiphy.flags & WIPHY_FLAG_SUPPORTS_TDLS) ||
     !rdev->ops->tdls_oper)
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_TDLS_OPERATION] ||
     !info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 operation = nla_get_u8(info->attrs[NL80211_ATTR_TDLS_OPERATION]);
 peer = nla_data(info->attrs[NL80211_ATTR_MAC]);

 return rdev_tdls_oper(rdev, dev, peer, operation);
}

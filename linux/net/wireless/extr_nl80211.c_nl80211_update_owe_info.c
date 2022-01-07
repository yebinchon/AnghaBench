
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ops; } ;
struct genl_info {scalar_t__* attrs; struct net_device** user_ptr; } ;
struct cfg80211_update_owe_info {int ie_len; int ie; int peer; int status; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
typedef int owe_info ;
struct TYPE_2__ {int update_owe_info; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ETH_ALEN ;
 size_t NL80211_ATTR_IE ;
 size_t NL80211_ATTR_MAC ;
 size_t NL80211_ATTR_STATUS_CODE ;
 int memset (struct cfg80211_update_owe_info*,int ,int) ;
 int nla_data (scalar_t__) ;
 int nla_get_u16 (scalar_t__) ;
 int nla_len (scalar_t__) ;
 int nla_memcpy (int ,scalar_t__,int ) ;
 int rdev_update_owe_info (struct net_device*,struct net_device*,struct cfg80211_update_owe_info*) ;

__attribute__((used)) static int nl80211_update_owe_info(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct cfg80211_update_owe_info owe_info;
 struct net_device *dev = info->user_ptr[1];

 if (!rdev->ops->update_owe_info)
  return -EOPNOTSUPP;

 if (!info->attrs[NL80211_ATTR_STATUS_CODE] ||
     !info->attrs[NL80211_ATTR_MAC])
  return -EINVAL;

 memset(&owe_info, 0, sizeof(owe_info));
 owe_info.status = nla_get_u16(info->attrs[NL80211_ATTR_STATUS_CODE]);
 nla_memcpy(owe_info.peer, info->attrs[NL80211_ATTR_MAC], ETH_ALEN);

 if (info->attrs[NL80211_ATTR_IE]) {
  owe_info.ie = nla_data(info->attrs[NL80211_ATTR_IE]);
  owe_info.ie_len = nla_len(info->attrs[NL80211_ATTR_IE]);
 }

 return rdev_update_owe_info(rdev, dev, &owe_info);
}

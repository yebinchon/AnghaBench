
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct wireless_dev {TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int cancel_remain_on_channel; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 size_t NL80211_ATTR_COOKIE ;
 int nla_get_u64 (int ) ;
 int rdev_cancel_remain_on_channel (struct wireless_dev*,struct wireless_dev*,int ) ;

__attribute__((used)) static int nl80211_cancel_remain_on_channel(struct sk_buff *skb,
         struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];
 u64 cookie;

 if (!info->attrs[NL80211_ATTR_COOKIE])
  return -EINVAL;

 if (!rdev->ops->cancel_remain_on_channel)
  return -EOPNOTSUPP;

 cookie = nla_get_u64(info->attrs[NL80211_ATTR_COOKIE]);

 return rdev_cancel_remain_on_channel(rdev, wdev, cookie);
}

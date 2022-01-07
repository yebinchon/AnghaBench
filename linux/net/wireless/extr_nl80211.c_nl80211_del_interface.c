
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wireless_dev {int netdev; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {struct wireless_dev** user_ptr; } ;
struct cfg80211_registered_device {int netdev; TYPE_1__* ops; } ;
struct TYPE_2__ {int del_virtual_intf; } ;


 int EOPNOTSUPP ;
 int rdev_del_virtual_intf (struct wireless_dev*,struct wireless_dev*) ;

__attribute__((used)) static int nl80211_del_interface(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg80211_registered_device *rdev = info->user_ptr[0];
 struct wireless_dev *wdev = info->user_ptr[1];

 if (!rdev->ops->del_virtual_intf)
  return -EOPNOTSUPP;
 if (!wdev->netdev)
  info->user_ptr[1] = ((void*)0);

 return rdev_del_virtual_intf(rdev, wdev);
}

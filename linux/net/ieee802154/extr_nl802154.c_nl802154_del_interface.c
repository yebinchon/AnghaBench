
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpan_dev {int netdev; TYPE_1__* ops; } ;
struct sk_buff {int dummy; } ;
struct genl_info {struct wpan_dev** user_ptr; } ;
struct cfg802154_registered_device {int netdev; TYPE_1__* ops; } ;
struct TYPE_2__ {int del_virtual_intf; } ;


 int EOPNOTSUPP ;
 int rdev_del_virtual_intf (struct wpan_dev*,struct wpan_dev*) ;

__attribute__((used)) static int nl802154_del_interface(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg802154_registered_device *rdev = info->user_ptr[0];
 struct wpan_dev *wpan_dev = info->user_ptr[1];

 if (!rdev->ops->del_virtual_intf)
  return -EOPNOTSUPP;







 if (!wpan_dev->netdev)
  info->user_ptr[1] = ((void*)0);

 return rdev_del_virtual_intf(rdev, wpan_dev);
}

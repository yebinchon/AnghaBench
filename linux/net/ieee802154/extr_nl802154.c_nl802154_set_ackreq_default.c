
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {struct wpan_dev* ieee802154_ptr; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg802154_registered_device {struct wpan_dev* ieee802154_ptr; } ;


 int EBUSY ;
 int EINVAL ;
 size_t NL802154_ATTR_ACKREQ_DEFAULT ;
 scalar_t__ netif_running (struct net_device*) ;
 int nla_get_u8 (int ) ;
 int rdev_set_ackreq_default (struct net_device*,struct wpan_dev*,int) ;

__attribute__((used)) static int
nl802154_set_ackreq_default(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg802154_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wpan_dev *wpan_dev = dev->ieee802154_ptr;
 int ackreq;

 if (netif_running(dev))
  return -EBUSY;

 if (!info->attrs[NL802154_ATTR_ACKREQ_DEFAULT])
  return -EINVAL;

 ackreq = nla_get_u8(info->attrs[NL802154_ATTR_ACKREQ_DEFAULT]);

 if (ackreq != 0 && ackreq != 1)
  return -EINVAL;

 return rdev_set_ackreq_default(rdev, wpan_dev, ackreq);
}

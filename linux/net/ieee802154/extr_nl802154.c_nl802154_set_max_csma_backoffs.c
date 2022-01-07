
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct wpan_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ min_csma_backoffs; scalar_t__ max_csma_backoffs; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;
struct net_device {TYPE_2__ wpan_phy; struct wpan_dev* ieee802154_ptr; } ;
struct genl_info {int * attrs; struct net_device** user_ptr; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; struct wpan_dev* ieee802154_ptr; } ;


 int EBUSY ;
 int EINVAL ;
 size_t NL802154_ATTR_MAX_CSMA_BACKOFFS ;
 scalar_t__ netif_running (struct net_device*) ;
 scalar_t__ nla_get_u8 (int ) ;
 int rdev_set_max_csma_backoffs (struct net_device*,struct wpan_dev*,scalar_t__) ;

__attribute__((used)) static int
nl802154_set_max_csma_backoffs(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg802154_registered_device *rdev = info->user_ptr[0];
 struct net_device *dev = info->user_ptr[1];
 struct wpan_dev *wpan_dev = dev->ieee802154_ptr;
 u8 max_csma_backoffs;


 if (netif_running(dev))
  return -EBUSY;

 if (!info->attrs[NL802154_ATTR_MAX_CSMA_BACKOFFS])
  return -EINVAL;

 max_csma_backoffs = nla_get_u8(
   info->attrs[NL802154_ATTR_MAX_CSMA_BACKOFFS]);


 if (max_csma_backoffs < rdev->wpan_phy.supported.min_csma_backoffs ||
     max_csma_backoffs > rdev->wpan_phy.supported.max_csma_backoffs)
  return -EINVAL;

 return rdev_set_max_csma_backoffs(rdev, wpan_dev, max_csma_backoffs);
}

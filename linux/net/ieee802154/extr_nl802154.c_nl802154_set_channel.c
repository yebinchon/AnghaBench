
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct sk_buff {int dummy; } ;
struct genl_info {int * attrs; struct cfg802154_registered_device** user_ptr; } ;
struct TYPE_3__ {int* channels; } ;
struct TYPE_4__ {TYPE_1__ supported; } ;
struct cfg802154_registered_device {TYPE_2__ wpan_phy; } ;


 int BIT (scalar_t__) ;
 int EINVAL ;
 scalar_t__ IEEE802154_MAX_CHANNEL ;
 scalar_t__ IEEE802154_MAX_PAGE ;
 size_t NL802154_ATTR_CHANNEL ;
 size_t NL802154_ATTR_PAGE ;
 scalar_t__ nla_get_u8 (int ) ;
 int rdev_set_channel (struct cfg802154_registered_device*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int nl802154_set_channel(struct sk_buff *skb, struct genl_info *info)
{
 struct cfg802154_registered_device *rdev = info->user_ptr[0];
 u8 channel, page;

 if (!info->attrs[NL802154_ATTR_PAGE] ||
     !info->attrs[NL802154_ATTR_CHANNEL])
  return -EINVAL;

 page = nla_get_u8(info->attrs[NL802154_ATTR_PAGE]);
 channel = nla_get_u8(info->attrs[NL802154_ATTR_CHANNEL]);


 if (page > IEEE802154_MAX_PAGE || channel > IEEE802154_MAX_CHANNEL ||
     !(rdev->wpan_phy.supported.channels[page] & BIT(channel)))
  return -EINVAL;

 return rdev_set_channel(rdev, page, channel);
}

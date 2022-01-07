
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ieee802154_mlme_ops {TYPE_1__* llsec; } ;
struct ieee802154_llsec_device_key {int key_id; } ;
struct genl_info {int * attrs; } ;
typedef int __le64 ;
struct TYPE_2__ {int (* del_devkey ) (struct net_device*,int ,struct ieee802154_llsec_device_key*) ;} ;


 int EINVAL ;
 size_t IEEE802154_ATTR_HW_ADDR ;
 scalar_t__ ieee802154_llsec_parse_key_id (struct genl_info*,int *) ;
 struct ieee802154_mlme_ops* ieee802154_mlme_ops (struct net_device*) ;
 int nla_get_hwaddr (int ) ;
 int stub1 (struct net_device*,int ,struct ieee802154_llsec_device_key*) ;

__attribute__((used)) static int llsec_del_devkey(struct net_device *dev, struct genl_info *info)
{
 struct ieee802154_mlme_ops *ops = ieee802154_mlme_ops(dev);
 struct ieee802154_llsec_device_key key;
 __le64 devaddr;

 if (!info->attrs[IEEE802154_ATTR_HW_ADDR] ||
     ieee802154_llsec_parse_key_id(info, &key.key_id))
  return -EINVAL;

 devaddr = nla_get_hwaddr(info->attrs[IEEE802154_ATTR_HW_ADDR]);

 return ops->llsec->del_devkey(dev, devaddr, &key);
}

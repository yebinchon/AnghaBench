
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net_device {TYPE_1__* ieee802154_ptr; } ;
struct ieee802154_addr {int pan_id; int extended_addr; int mode; } ;
struct genl_info {int * attrs; } ;
struct TYPE_4__ {int (* assoc_resp ) (struct net_device*,struct ieee802154_addr*,int ,int ) ;} ;
struct TYPE_3__ {int pan_id; } ;


 int EINVAL ;
 int ENODEV ;
 int EOPNOTSUPP ;
 int IEEE802154_ADDR_LONG ;
 size_t IEEE802154_ATTR_DEST_HW_ADDR ;
 size_t IEEE802154_ATTR_DEST_SHORT_ADDR ;
 size_t IEEE802154_ATTR_STATUS ;
 int dev_put (struct net_device*) ;
 TYPE_2__* ieee802154_mlme_ops (struct net_device*) ;
 struct net_device* ieee802154_nl_get_dev (struct genl_info*) ;
 int nla_get_hwaddr (int ) ;
 int nla_get_shortaddr (int ) ;
 int nla_get_u8 (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 int stub1 (struct net_device*,struct ieee802154_addr*,int ,int ) ;

int ieee802154_associate_resp(struct sk_buff *skb, struct genl_info *info)
{
 struct net_device *dev;
 struct ieee802154_addr addr;
 int ret = -EOPNOTSUPP;

 if (!info->attrs[IEEE802154_ATTR_STATUS] ||
     !info->attrs[IEEE802154_ATTR_DEST_HW_ADDR] ||
     !info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR])
  return -EINVAL;

 dev = ieee802154_nl_get_dev(info);
 if (!dev)
  return -ENODEV;
 if (!ieee802154_mlme_ops(dev)->assoc_resp)
  goto out;

 addr.mode = IEEE802154_ADDR_LONG;
 addr.extended_addr = nla_get_hwaddr(
   info->attrs[IEEE802154_ATTR_DEST_HW_ADDR]);
 rtnl_lock();
 addr.pan_id = dev->ieee802154_ptr->pan_id;
 rtnl_unlock();

 ret = ieee802154_mlme_ops(dev)->assoc_resp(dev, &addr,
  nla_get_shortaddr(info->attrs[IEEE802154_ATTR_DEST_SHORT_ADDR]),
  nla_get_u8(info->attrs[IEEE802154_ATTR_STATUS]));

out:
 dev_put(dev);
 return ret;
}

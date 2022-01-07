
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ type; int neigh_priv_len; TYPE_1__* ieee802154_ptr; int needed_tailroom; scalar_t__ needed_headroom; int dev_addr; } ;
struct net {int dummy; } ;
struct lowpan_802154_neigh {int dummy; } ;
struct TYPE_4__ {struct net_device* wdev; } ;
struct TYPE_3__ {struct net_device* lowpan_dev; } ;


 scalar_t__ ARPHRD_IEEE802154 ;
 int ASSERT_RTNL () ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int IEEE802154_ADDR_LEN ;
 size_t IFLA_LINK ;
 scalar_t__ LOWPAN_IPHC_MAX_HEADER_LEN ;
 int LOWPAN_LLTYPE_IEEE802154 ;
 struct net_device* dev_get_by_index (int ,int ) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 TYPE_2__* lowpan_802154_dev (struct net_device*) ;
 int lowpan_register_netdevice (struct net_device*,int ) ;
 int memcpy (int ,int ,int ) ;
 int nla_get_u32 (struct nlattr*) ;
 int pr_debug (char*) ;

__attribute__((used)) static int lowpan_newlink(struct net *src_net, struct net_device *ldev,
     struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 struct net_device *wdev;
 int ret;

 ASSERT_RTNL();

 pr_debug("adding new link\n");

 if (!tb[IFLA_LINK])
  return -EINVAL;

 wdev = dev_get_by_index(dev_net(ldev), nla_get_u32(tb[IFLA_LINK]));
 if (!wdev)
  return -ENODEV;
 if (wdev->type != ARPHRD_IEEE802154) {
  dev_put(wdev);
  return -EINVAL;
 }

 if (wdev->ieee802154_ptr->lowpan_dev) {
  dev_put(wdev);
  return -EBUSY;
 }

 lowpan_802154_dev(ldev)->wdev = wdev;

 memcpy(ldev->dev_addr, wdev->dev_addr, IEEE802154_ADDR_LEN);






 ldev->needed_headroom = LOWPAN_IPHC_MAX_HEADER_LEN +
    wdev->needed_headroom;
 ldev->needed_tailroom = wdev->needed_tailroom;

 ldev->neigh_priv_len = sizeof(struct lowpan_802154_neigh);

 ret = lowpan_register_netdevice(ldev, LOWPAN_LLTYPE_IEEE802154);
 if (ret < 0) {
  dev_put(wdev);
  return ret;
 }

 wdev->ieee802154_ptr->lowpan_dev = ldev;
 return 0;
}

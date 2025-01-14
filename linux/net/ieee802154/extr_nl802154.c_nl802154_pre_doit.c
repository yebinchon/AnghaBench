
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpan_dev {int wpan_phy; struct wpan_dev* netdev; } ;
struct sk_buff {int dummy; } ;
struct net_device {int wpan_phy; struct net_device* netdev; } ;
struct genl_ops {int internal_flags; } ;
struct genl_info {struct wpan_dev** user_ptr; int attrs; } ;
struct cfg802154_registered_device {int wpan_phy; struct cfg802154_registered_device* netdev; } ;


 int ASSERT_RTNL () ;
 int EINVAL ;
 int ENETDOWN ;
 scalar_t__ IS_ERR (struct wpan_dev*) ;
 int NL802154_FLAG_CHECK_NETDEV_UP ;
 int NL802154_FLAG_NEED_NETDEV ;
 int NL802154_FLAG_NEED_RTNL ;
 int NL802154_FLAG_NEED_WPAN_DEV ;
 int NL802154_FLAG_NEED_WPAN_PHY ;
 int PTR_ERR (struct wpan_dev*) ;
 struct wpan_dev* __cfg802154_wpan_dev_from_attrs (int ,int ) ;
 struct wpan_dev* cfg802154_get_dev_from_info (int ,struct genl_info*) ;
 int dev_hold (struct wpan_dev*) ;
 int genl_info_net (struct genl_info*) ;
 int netif_running (struct wpan_dev*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 struct wpan_dev* wpan_phy_to_rdev (int ) ;

__attribute__((used)) static int nl802154_pre_doit(const struct genl_ops *ops, struct sk_buff *skb,
        struct genl_info *info)
{
 struct cfg802154_registered_device *rdev;
 struct wpan_dev *wpan_dev;
 struct net_device *dev;
 bool rtnl = ops->internal_flags & NL802154_FLAG_NEED_RTNL;

 if (rtnl)
  rtnl_lock();

 if (ops->internal_flags & NL802154_FLAG_NEED_WPAN_PHY) {
  rdev = cfg802154_get_dev_from_info(genl_info_net(info), info);
  if (IS_ERR(rdev)) {
   if (rtnl)
    rtnl_unlock();
   return PTR_ERR(rdev);
  }
  info->user_ptr[0] = rdev;
 } else if (ops->internal_flags & NL802154_FLAG_NEED_NETDEV ||
     ops->internal_flags & NL802154_FLAG_NEED_WPAN_DEV) {
  ASSERT_RTNL();
  wpan_dev = __cfg802154_wpan_dev_from_attrs(genl_info_net(info),
          info->attrs);
  if (IS_ERR(wpan_dev)) {
   if (rtnl)
    rtnl_unlock();
   return PTR_ERR(wpan_dev);
  }

  dev = wpan_dev->netdev;
  rdev = wpan_phy_to_rdev(wpan_dev->wpan_phy);

  if (ops->internal_flags & NL802154_FLAG_NEED_NETDEV) {
   if (!dev) {
    if (rtnl)
     rtnl_unlock();
    return -EINVAL;
   }

   info->user_ptr[1] = dev;
  } else {
   info->user_ptr[1] = wpan_dev;
  }

  if (dev) {
   if (ops->internal_flags & NL802154_FLAG_CHECK_NETDEV_UP &&
       !netif_running(dev)) {
    if (rtnl)
     rtnl_unlock();
    return -ENETDOWN;
   }

   dev_hold(dev);
  }

  info->user_ptr[0] = rdev;
 }

 return 0;
}

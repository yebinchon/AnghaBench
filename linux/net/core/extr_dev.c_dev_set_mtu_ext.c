
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int mtu; int min_mtu; int max_mtu; } ;


 int EINVAL ;
 int ENODEV ;
 int NETDEV_CHANGEMTU ;
 int NETDEV_PRECHANGEMTU ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int __dev_set_mtu (struct net_device*,int) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int call_netdevice_notifiers_mtu (int ,struct net_device*,int) ;
 int netif_device_present (struct net_device*) ;
 int notifier_to_errno (int) ;

int dev_set_mtu_ext(struct net_device *dev, int new_mtu,
      struct netlink_ext_ack *extack)
{
 int err, orig_mtu;

 if (new_mtu == dev->mtu)
  return 0;


 if (new_mtu < 0 || new_mtu < dev->min_mtu) {
  NL_SET_ERR_MSG(extack, "mtu less than device minimum");
  return -EINVAL;
 }

 if (dev->max_mtu > 0 && new_mtu > dev->max_mtu) {
  NL_SET_ERR_MSG(extack, "mtu greater than device maximum");
  return -EINVAL;
 }

 if (!netif_device_present(dev))
  return -ENODEV;

 err = call_netdevice_notifiers(NETDEV_PRECHANGEMTU, dev);
 err = notifier_to_errno(err);
 if (err)
  return err;

 orig_mtu = dev->mtu;
 err = __dev_set_mtu(dev, new_mtu);

 if (!err) {
  err = call_netdevice_notifiers_mtu(NETDEV_CHANGEMTU, dev,
         orig_mtu);
  err = notifier_to_errno(err);
  if (err) {



   __dev_set_mtu(dev, orig_mtu);
   call_netdevice_notifiers_mtu(NETDEV_CHANGEMTU, dev,
           new_mtu);
  }
 }
 return err;
}

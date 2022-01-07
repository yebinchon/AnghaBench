
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct netdev_notifier_info {struct netlink_ext_ack* extack; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int call_netdevice_notifiers_info (unsigned long,struct netdev_notifier_info*) ;

__attribute__((used)) static int call_netdevice_notifiers_extack(unsigned long val,
        struct net_device *dev,
        struct netlink_ext_ack *extack)
{
 struct netdev_notifier_info info = {
  .dev = dev,
  .extack = extack,
 };

 return call_netdevice_notifiers_info(val, &info);
}

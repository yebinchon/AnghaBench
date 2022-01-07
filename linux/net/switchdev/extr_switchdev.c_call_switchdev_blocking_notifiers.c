
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchdev_notifier_info {struct netlink_ext_ack* extack; struct net_device* dev; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;


 int blocking_notifier_call_chain (int *,unsigned long,struct switchdev_notifier_info*) ;
 int switchdev_blocking_notif_chain ;

int call_switchdev_blocking_notifiers(unsigned long val, struct net_device *dev,
          struct switchdev_notifier_info *info,
          struct netlink_ext_ack *extack)
{
 info->dev = dev;
 info->extack = extack;
 return blocking_notifier_call_chain(&switchdev_blocking_notif_chain,
         val, info);
}

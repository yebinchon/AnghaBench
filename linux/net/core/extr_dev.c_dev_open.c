
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct net_device {int flags; } ;


 int GFP_KERNEL ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int NETDEV_UP ;
 int RTM_NEWLINK ;
 int __dev_open (struct net_device*,struct netlink_ext_ack*) ;
 int call_netdevice_notifiers (int ,struct net_device*) ;
 int rtmsg_ifinfo (int ,struct net_device*,int,int ) ;

int dev_open(struct net_device *dev, struct netlink_ext_ack *extack)
{
 int ret;

 if (dev->flags & IFF_UP)
  return 0;

 ret = __dev_open(dev, extack);
 if (ret < 0)
  return ret;

 rtmsg_ifinfo(RTM_NEWLINK, dev, IFF_UP|IFF_RUNNING, GFP_KERNEL);
 call_netdevice_notifiers(NETDEV_UP, dev);

 return ret;
}

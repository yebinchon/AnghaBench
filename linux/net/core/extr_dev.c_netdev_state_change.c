
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct net_device* dev; } ;
struct netdev_notifier_change_info {TYPE_1__ info; } ;
struct net_device {int flags; } ;


 int GFP_KERNEL ;
 int IFF_UP ;
 int NETDEV_CHANGE ;
 int RTM_NEWLINK ;
 int call_netdevice_notifiers_info (int ,TYPE_1__*) ;
 int rtmsg_ifinfo (int ,struct net_device*,int ,int ) ;

void netdev_state_change(struct net_device *dev)
{
 if (dev->flags & IFF_UP) {
  struct netdev_notifier_change_info change_info = {
   .info.dev = dev,
  };

  call_netdevice_notifiers_info(NETDEV_CHANGE,
           &change_info.info);
  rtmsg_ifinfo(RTM_NEWLINK, dev, 0, GFP_KERNEL);
 }
}

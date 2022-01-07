
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int ifindex; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int sel_netif_kill (int ,int ) ;

__attribute__((used)) static int sel_netif_netdev_notifier_handler(struct notifier_block *this,
          unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (event == NETDEV_DOWN)
  sel_netif_kill(dev_net(dev), dev->ifindex);

 return NOTIFY_DONE;
}

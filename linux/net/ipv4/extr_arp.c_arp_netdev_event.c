
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct netdev_notifier_change_info {int flags_changed; } ;
struct net_device {int dummy; } ;


 int IFF_NOARP ;


 int NOTIFY_DONE ;
 int arp_tbl ;
 int dev_net (struct net_device*) ;
 int neigh_carrier_down (int *,struct net_device*) ;
 int neigh_changeaddr (int *,struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int netif_carrier_ok (struct net_device*) ;
 int rt_cache_flush (int ) ;

__attribute__((used)) static int arp_netdev_event(struct notifier_block *this, unsigned long event,
       void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct netdev_notifier_change_info *change_info;

 switch (event) {
 case 128:
  neigh_changeaddr(&arp_tbl, dev);
  rt_cache_flush(dev_net(dev));
  break;
 case 129:
  change_info = ptr;
  if (change_info->flags_changed & IFF_NOARP)
   neigh_changeaddr(&arp_tbl, dev);
  if (!netif_carrier_ok(dev))
   neigh_carrier_down(&arp_tbl, dev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}

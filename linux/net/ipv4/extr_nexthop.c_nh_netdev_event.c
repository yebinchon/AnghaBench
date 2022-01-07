
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_2__ {int mtu; } ;
struct netdev_notifier_info_ext {TYPE_1__ ext; } ;
struct net_device {int dummy; } ;


 int IFF_LOWER_UP ;
 int IFF_RUNNING ;




 int NOTIFY_DONE ;
 int dev_get_flags (struct net_device*) ;
 int dev_net (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int nexthop_flush_dev (struct net_device*) ;
 int nexthop_sync_mtu (struct net_device*,int ) ;
 int rt_cache_flush (int ) ;

__attribute__((used)) static int nh_netdev_event(struct notifier_block *this,
      unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct netdev_notifier_info_ext *info_ext;

 switch (event) {
 case 129:
 case 128:
  nexthop_flush_dev(dev);
  break;
 case 131:
  if (!(dev_get_flags(dev) & (IFF_RUNNING | IFF_LOWER_UP)))
   nexthop_flush_dev(dev);
  break;
 case 130:
  info_ext = ptr;
  nexthop_sync_mtu(dev, info_ext->ext.mtu);
  rt_cache_flush(dev_net(dev));
  break;
 }
 return NOTIFY_DONE;
}

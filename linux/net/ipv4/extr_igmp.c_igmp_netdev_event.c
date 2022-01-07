
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct in_device {int dummy; } ;



 int NOTIFY_DONE ;
 struct in_device* __in_dev_get_rtnl (struct net_device*) ;
 int ip_mc_rejoin_groups (struct in_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int igmp_netdev_event(struct notifier_block *this,
        unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct in_device *in_dev;

 switch (event) {
 case 128:
  in_dev = __in_dev_get_rtnl(dev);
  if (in_dev)
   ip_mc_rejoin_groups(in_dev);
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}

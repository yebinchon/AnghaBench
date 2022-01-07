
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
struct inet6_dev {int dummy; } ;



 int NOTIFY_DONE ;
 struct inet6_dev* __in6_dev_get (struct net_device*) ;
 int ipv6_mc_rejoin_groups (struct inet6_dev*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int ipv6_mc_netdev_event(struct notifier_block *this,
    unsigned long event,
    void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct inet6_dev *idev = __in6_dev_get(dev);

 switch (event) {
 case 128:
  if (idev)
   ipv6_mc_rejoin_groups(idev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net {int dummy; } ;
struct in_ifaddr {struct in_device* ifa_dev; } ;
struct in_device {scalar_t__ dead; int dev; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 struct net* dev_net (int ) ;
 int inet_cmp ;
 int nf_ct_iterate_cleanup_net (struct net*,int ,void*,int ,int ) ;

__attribute__((used)) static int masq_inet_event(struct notifier_block *this,
      unsigned long event,
      void *ptr)
{
 struct in_device *idev = ((struct in_ifaddr *)ptr)->ifa_dev;
 struct net *net = dev_net(idev->dev);






 if (idev->dead)
  return NOTIFY_DONE;

 if (event == NETDEV_DOWN)
  nf_ct_iterate_cleanup_net(net, inet_cmp, ptr, 0, 0);

 return NOTIFY_DONE;
}

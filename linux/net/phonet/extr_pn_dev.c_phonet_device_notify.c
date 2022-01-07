
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int type; } ;


 int ARPHRD_PHONET ;


 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int phonet_device_autoconf (struct net_device*) ;
 int phonet_device_destroy (struct net_device*) ;
 int phonet_route_autodel (struct net_device*) ;

__attribute__((used)) static int phonet_device_notify(struct notifier_block *me, unsigned long what,
    void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 switch (what) {
 case 129:
  if (dev->type == ARPHRD_PHONET)
   phonet_device_autoconf(dev);
  break;
 case 128:
  phonet_device_destroy(dev);
  phonet_route_autodel(dev);
  break;
 }
 return 0;

}

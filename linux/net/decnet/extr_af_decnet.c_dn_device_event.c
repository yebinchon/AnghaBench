
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;




 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int dn_dev_down (struct net_device*) ;
 int dn_dev_up (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int dn_device_event(struct notifier_block *this, unsigned long event,
      void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  dn_dev_up(dev);
  break;
 case 129:
  dn_dev_down(dev);
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}

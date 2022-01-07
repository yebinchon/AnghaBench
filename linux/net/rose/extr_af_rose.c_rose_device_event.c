
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int type; } ;




 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int rose_kill_by_device (struct net_device*) ;
 int rose_link_device_down (struct net_device*) ;
 int rose_rt_device_down (struct net_device*) ;

__attribute__((used)) static int rose_device_event(struct notifier_block *this,
        unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 if (event != NETDEV_DOWN)
  return NOTIFY_DONE;

 switch (dev->type) {
 case 128:
  rose_kill_by_device(dev);
  break;
 case 129:
  rose_link_device_down(dev);
  rose_rt_device_down(dev);
  break;
 }

 return NOTIFY_DONE;
}

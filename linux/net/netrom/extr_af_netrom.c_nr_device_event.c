
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int nr_kill_by_device (struct net_device*) ;
 int nr_rt_device_down (struct net_device*) ;

__attribute__((used)) static int nr_device_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 if (event != NETDEV_DOWN)
  return NOTIFY_DONE;

 nr_kill_by_device(dev);
 nr_rt_device_down(dev);

 return NOTIFY_DONE;
}

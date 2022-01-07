
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct netprio_map {int dummy; } ;
struct net_device {int priomap; } ;



 int NOTIFY_DONE ;
 int RCU_INIT_POINTER (int ,int *) ;
 int kfree_rcu (struct netprio_map*,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int rcu ;
 struct netprio_map* rtnl_dereference (int ) ;

__attribute__((used)) static int netprio_device_event(struct notifier_block *unused,
    unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct netprio_map *old;






 switch (event) {
 case 128:
  old = rtnl_dereference(dev->priomap);
  RCU_INIT_POINTER(dev->priomap, ((void*)0));
  if (old)
   kfree_rcu(old, rcu);
  break;
 }
 return NOTIFY_DONE;
}

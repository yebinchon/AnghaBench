
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;




 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int smc_pnet_remove_by_ndev (struct net_device*) ;

__attribute__((used)) static int smc_pnet_netdev_event(struct notifier_block *this,
     unsigned long event, void *ptr)
{
 struct net_device *event_dev = netdev_notifier_info_to_dev(ptr);

 switch (event) {
 case 129:
 case 128:
  smc_pnet_remove_by_ndev(event_dev);
  return NOTIFY_OK;
 default:
  return NOTIFY_DONE;
 }
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;
 int NOTIFY_DONE ;
 int failover_slave_link_change (struct net_device*) ;
 int failover_slave_name_change (struct net_device*) ;
 int failover_slave_register (struct net_device*) ;
 int failover_slave_unregister (struct net_device*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 scalar_t__ netif_is_failover (struct net_device*) ;

__attribute__((used)) static int
failover_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *event_dev = netdev_notifier_info_to_dev(ptr);


 if (netif_is_failover(event_dev))
  return NOTIFY_DONE;

 switch (event) {
 case 130:
  return failover_slave_register(event_dev);
 case 129:
  return failover_slave_unregister(event_dev);
 case 128:
 case 131:
 case 133:
  return failover_slave_link_change(event_dev);
 case 132:
  return failover_slave_name_change(event_dev);
 default:
  return NOTIFY_DONE;
 }
}

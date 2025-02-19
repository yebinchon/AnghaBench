
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_CHANGEUPPER ;
 int NOTIFY_DONE ;
 int dsa_slave_changeupper (struct net_device*,void*) ;
 int dsa_slave_dev_check (struct net_device*) ;
 int dsa_slave_upper_vlan_check (struct net_device*,void*) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;

__attribute__((used)) static int dsa_slave_netdevice_event(struct notifier_block *nb,
         unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (event == NETDEV_CHANGEUPPER) {
  if (!dsa_slave_dev_check(dev))
   return dsa_slave_upper_vlan_check(dev, ptr);

  return dsa_slave_changeupper(dev, ptr);
 }

 return NOTIFY_DONE;
}

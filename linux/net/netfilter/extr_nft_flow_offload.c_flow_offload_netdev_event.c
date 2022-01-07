
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_DOWN ;
 int NOTIFY_DONE ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int nf_flow_table_cleanup (struct net_device*) ;

__attribute__((used)) static int flow_offload_netdev_event(struct notifier_block *this,
         unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (event != NETDEV_DOWN)
  return NOTIFY_DONE;

 nf_flow_table_cleanup(dev);

 return NOTIFY_DONE;
}

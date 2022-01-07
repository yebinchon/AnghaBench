
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {scalar_t__ type; int * netdev_ops; } ;
struct TYPE_2__ {int number; } ;


 scalar_t__ ARPHRD_ATM ;



 unsigned long NETDEV_UNREGISTER ;

 int NOTIFY_DONE ;
 TYPE_1__* PRIV (struct net_device*) ;
 int act_change ;
 int act_down ;
 int act_up ;
 int clip_netdev_ops ;
 int dev_net (struct net_device*) ;
 int init_net ;
 int net_eq (int ,int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int pr_debug (char*) ;
 int to_atmarpd (int ,int ,int ) ;

__attribute__((used)) static int clip_device_event(struct notifier_block *this, unsigned long event,
        void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 if (event == NETDEV_UNREGISTER)
  return NOTIFY_DONE;


 if (dev->type != ARPHRD_ATM || dev->netdev_ops != &clip_netdev_ops)
  return NOTIFY_DONE;

 switch (event) {
 case 128:
  pr_debug("NETDEV_UP\n");
  to_atmarpd(act_up, PRIV(dev)->number, 0);
  break;
 case 129:
  pr_debug("NETDEV_DOWN\n");
  to_atmarpd(act_down, PRIV(dev)->number, 0);
  break;
 case 131:
 case 130:
  pr_debug("NETDEV_CHANGE*\n");
  to_atmarpd(act_change, PRIV(dev)->number, 0);
  break;
 }
 return NOTIFY_DONE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netpoll_info {int dev_lock; } ;
struct net_device_ops {int (* ndo_poll_controller ) (struct net_device*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; int npinfo; } ;


 scalar_t__ down_trylock (int *) ;
 int netif_running (struct net_device*) ;
 int poll_napi (struct net_device*) ;
 struct netpoll_info* rcu_dereference_bh (int ) ;
 int stub1 (struct net_device*) ;
 int up (int *) ;
 int zap_completion_queue () ;

void netpoll_poll_dev(struct net_device *dev)
{
 struct netpoll_info *ni = rcu_dereference_bh(dev->npinfo);
 const struct net_device_ops *ops;





 if (!ni || down_trylock(&ni->dev_lock))
  return;

 if (!netif_running(dev)) {
  up(&ni->dev_lock);
  return;
 }

 ops = dev->netdev_ops;
 if (ops->ndo_poll_controller)
  ops->ndo_poll_controller(dev);

 poll_napi(dev);

 up(&ni->dev_lock);

 zap_completion_queue();
}

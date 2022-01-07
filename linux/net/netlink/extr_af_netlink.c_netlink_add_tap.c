
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_tap_net {int netlink_tap_lock; int netlink_tap_all; } ;
struct netlink_tap {int module; int list; TYPE_1__* dev; } ;
struct net {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; } ;


 scalar_t__ ARPHRD_NETLINK ;
 int EINVAL ;
 int __module_get (int ) ;
 struct net* dev_net (TYPE_1__*) ;
 int list_add_rcu (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct netlink_tap_net* net_generic (struct net*,int ) ;
 int netlink_tap_net_id ;
 scalar_t__ unlikely (int) ;

int netlink_add_tap(struct netlink_tap *nt)
{
 struct net *net = dev_net(nt->dev);
 struct netlink_tap_net *nn = net_generic(net, netlink_tap_net_id);

 if (unlikely(nt->dev->type != ARPHRD_NETLINK))
  return -EINVAL;

 mutex_lock(&nn->netlink_tap_lock);
 list_add_rcu(&nt->list, &nn->netlink_tap_all);
 mutex_unlock(&nn->netlink_tap_lock);

 __module_get(nt->module);

 return 0;
}

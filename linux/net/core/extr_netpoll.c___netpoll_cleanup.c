
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netpoll_info {int rcu; int refcnt; } ;
struct netpoll {TYPE_1__* dev; } ;
struct net_device_ops {int (* ndo_netpoll_cleanup ) (TYPE_1__*) ;} ;
struct TYPE_2__ {int npinfo; struct net_device_ops* netdev_ops; } ;


 int RCU_INIT_POINTER (int ,int *) ;
 int call_rcu (int *,int ) ;
 int netpoll_srcu ;
 int rcu_cleanup_netpoll_info ;
 scalar_t__ refcount_dec_and_test (int *) ;
 struct netpoll_info* rtnl_dereference (int ) ;
 int stub1 (TYPE_1__*) ;
 int synchronize_srcu (int *) ;

void __netpoll_cleanup(struct netpoll *np)
{
 struct netpoll_info *npinfo;

 npinfo = rtnl_dereference(np->dev->npinfo);
 if (!npinfo)
  return;

 synchronize_srcu(&netpoll_srcu);

 if (refcount_dec_and_test(&npinfo->refcnt)) {
  const struct net_device_ops *ops;

  ops = np->dev->netdev_ops;
  if (ops->ndo_netpoll_cleanup)
   ops->ndo_netpoll_cleanup(np->dev);

  RCU_INIT_POINTER(np->dev->npinfo, ((void*)0));
  call_rcu(&npinfo->rcu, rcu_cleanup_netpoll_info);
 } else
  RCU_INIT_POINTER(np->dev->npinfo, ((void*)0));
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device_ops {scalar_t__ (* ndo_neigh_setup ) (struct net_device*,struct neigh_parms*) ;} ;
struct net_device {struct net_device_ops* netdev_ops; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int list; } ;
struct neigh_table {int lock; TYPE_1__ parms; } ;
struct neigh_parms {int list; int * sysctl_table; int net; struct net_device* dev; int reachable_time; int refcnt; struct neigh_table* tbl; } ;


 int BASE_REACHABLE_TIME ;
 int GFP_KERNEL ;
 int NEIGH_VAR (struct neigh_parms*,int ) ;
 int dev_hold (struct net_device*) ;
 struct net* dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int kfree (struct neigh_parms*) ;
 struct neigh_parms* kmemdup (TYPE_1__*,int,int ) ;
 int list_add (int *,int *) ;
 int neigh_parms_data_state_cleanall (struct neigh_parms*) ;
 int neigh_rand_reach_time (int ) ;
 int refcount_set (int *,int) ;
 scalar_t__ stub1 (struct net_device*,struct neigh_parms*) ;
 int write_lock_bh (int *) ;
 int write_pnet (int *,struct net*) ;
 int write_unlock_bh (int *) ;

struct neigh_parms *neigh_parms_alloc(struct net_device *dev,
          struct neigh_table *tbl)
{
 struct neigh_parms *p;
 struct net *net = dev_net(dev);
 const struct net_device_ops *ops = dev->netdev_ops;

 p = kmemdup(&tbl->parms, sizeof(*p), GFP_KERNEL);
 if (p) {
  p->tbl = tbl;
  refcount_set(&p->refcnt, 1);
  p->reachable_time =
    neigh_rand_reach_time(NEIGH_VAR(p, BASE_REACHABLE_TIME));
  dev_hold(dev);
  p->dev = dev;
  write_pnet(&p->net, net);
  p->sysctl_table = ((void*)0);

  if (ops->ndo_neigh_setup && ops->ndo_neigh_setup(dev, p)) {
   dev_put(dev);
   kfree(p);
   return ((void*)0);
  }

  write_lock_bh(&tbl->lock);
  list_add(&p->list, &tbl->parms.list);
  write_unlock_bh(&tbl->lock);

  neigh_parms_data_state_cleanall(p);
 }
 return p;
}

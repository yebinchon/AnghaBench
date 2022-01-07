
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_1__* netdev_ops; } ;
struct neighbour {TYPE_2__* tbl; int parms; scalar_t__ arp_queue_len_bytes; int lock; int arp_queue; int dead; struct net_device* dev; } ;
struct TYPE_4__ {int entries; } ;
struct TYPE_3__ {int (* ndo_neigh_destroy ) (struct net_device*,struct neighbour*) ;} ;


 int NEIGH_CACHE_STAT_INC (TYPE_2__*,int ) ;
 int __skb_queue_purge (int *) ;
 int atomic_dec (int *) ;
 int destroys ;
 int dev_put (struct net_device*) ;
 int dump_stack () ;
 int kfree_rcu (struct neighbour*,int ) ;
 int neigh_dbg (int,char*,struct neighbour*) ;
 scalar_t__ neigh_del_timer (struct neighbour*) ;
 int neigh_parms_put (int ) ;
 int pr_warn (char*,...) ;
 int rcu ;
 int stub1 (struct net_device*,struct neighbour*) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void neigh_destroy(struct neighbour *neigh)
{
 struct net_device *dev = neigh->dev;

 NEIGH_CACHE_STAT_INC(neigh->tbl, destroys);

 if (!neigh->dead) {
  pr_warn("Destroying alive neighbour %p\n", neigh);
  dump_stack();
  return;
 }

 if (neigh_del_timer(neigh))
  pr_warn("Impossible event\n");

 write_lock_bh(&neigh->lock);
 __skb_queue_purge(&neigh->arp_queue);
 write_unlock_bh(&neigh->lock);
 neigh->arp_queue_len_bytes = 0;

 if (dev->netdev_ops->ndo_neigh_destroy)
  dev->netdev_ops->ndo_neigh_destroy(dev, neigh);

 dev_put(dev);
 neigh_parms_put(neigh->parms);

 neigh_dbg(2, "neigh %p is destroyed\n", neigh);

 atomic_dec(&neigh->tbl->entries);
 kfree_rcu(neigh, rcu);
}

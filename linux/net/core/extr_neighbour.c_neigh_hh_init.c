
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_2__* header_ops; } ;
struct hh_cache {int hh_len; } ;
struct neighbour {int lock; struct hh_cache hh; TYPE_1__* tbl; struct net_device* dev; } ;
typedef int __be16 ;
struct TYPE_4__ {int (* cache ) (struct neighbour*,struct hh_cache*,int ) ;} ;
struct TYPE_3__ {int protocol; } ;


 int stub1 (struct neighbour*,struct hh_cache*,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void neigh_hh_init(struct neighbour *n)
{
 struct net_device *dev = n->dev;
 __be16 prot = n->tbl->protocol;
 struct hh_cache *hh = &n->hh;

 write_lock_bh(&n->lock);




 if (!hh->hh_len)
  dev->header_ops->cache(n, hh, prot);

 write_unlock_bh(&n->lock);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neighbour {int nud_state; } ;
struct neigh_table {int lock; } ;
typedef int __be32 ;


 int ENXIO ;
 int NEIGH_UPDATE_F_ADMIN ;
 int NEIGH_UPDATE_F_OVERRIDE ;
 int NUD_FAILED ;
 int NUD_NOARP ;
 struct neigh_table arp_tbl ;
 struct neighbour* neigh_lookup (struct neigh_table*,int *,struct net_device*) ;
 int neigh_release (struct neighbour*) ;
 int neigh_remove_one (struct neighbour*,struct neigh_table*) ;
 int neigh_update (struct neighbour*,int *,int ,int,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int arp_invalidate(struct net_device *dev, __be32 ip)
{
 struct neighbour *neigh = neigh_lookup(&arp_tbl, &ip, dev);
 int err = -ENXIO;
 struct neigh_table *tbl = &arp_tbl;

 if (neigh) {
  if (neigh->nud_state & ~NUD_NOARP)
   err = neigh_update(neigh, ((void*)0), NUD_FAILED,
        NEIGH_UPDATE_F_OVERRIDE|
        NEIGH_UPDATE_F_ADMIN, 0);
  write_lock_bh(&tbl->lock);
  neigh_release(neigh);
  neigh_remove_one(neigh, tbl);
  write_unlock_bh(&tbl->lock);
 }

 return err;
}

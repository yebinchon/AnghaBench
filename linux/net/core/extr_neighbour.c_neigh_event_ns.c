
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct net_device {int addr_len; } ;
struct neighbour {int dummy; } ;
struct neigh_table {int dummy; } ;


 int NEIGH_UPDATE_F_OVERRIDE ;
 int NUD_STALE ;
 struct neighbour* __neigh_lookup (struct neigh_table*,void*,struct net_device*,int ) ;
 int neigh_update (struct neighbour*,int *,int ,int ,int ) ;

struct neighbour *neigh_event_ns(struct neigh_table *tbl,
     u8 *lladdr, void *saddr,
     struct net_device *dev)
{
 struct neighbour *neigh = __neigh_lookup(tbl, saddr, dev,
       lladdr || !dev->addr_len);
 if (neigh)
  neigh_update(neigh, lladdr, NUD_STALE,
        NEIGH_UPDATE_F_OVERRIDE, 0);
 return neigh;
}

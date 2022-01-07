
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neighbour {int dummy; } ;
struct neigh_table {int dummy; } ;


 struct neighbour* ___neigh_create (struct neigh_table*,void const*,struct net_device*,int,int) ;

struct neighbour *__neigh_create(struct neigh_table *tbl, const void *pkey,
     struct net_device *dev, bool want_ref)
{
 return ___neigh_create(tbl, pkey, dev, 0, want_ref);
}

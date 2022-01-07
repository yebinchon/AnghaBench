
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct neigh_table {int dummy; } ;


 int __neigh_ifdown (struct neigh_table*,struct net_device*,int) ;

int neigh_carrier_down(struct neigh_table *tbl, struct net_device *dev)
{
 __neigh_ifdown(tbl, dev, 1);
 return 0;
}

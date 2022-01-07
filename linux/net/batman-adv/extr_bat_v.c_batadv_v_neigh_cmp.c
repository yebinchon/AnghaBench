
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct batadv_neigh_node {int dummy; } ;
struct TYPE_2__ {int throughput; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_v; } ;
struct batadv_hard_iface {int dummy; } ;


 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,struct batadv_hard_iface*) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;

__attribute__((used)) static int batadv_v_neigh_cmp(struct batadv_neigh_node *neigh1,
         struct batadv_hard_iface *if_outgoing1,
         struct batadv_neigh_node *neigh2,
         struct batadv_hard_iface *if_outgoing2)
{
 struct batadv_neigh_ifinfo *ifinfo1, *ifinfo2;
 int ret = 0;

 ifinfo1 = batadv_neigh_ifinfo_get(neigh1, if_outgoing1);
 if (!ifinfo1)
  goto err_ifinfo1;

 ifinfo2 = batadv_neigh_ifinfo_get(neigh2, if_outgoing2);
 if (!ifinfo2)
  goto err_ifinfo2;

 ret = ifinfo1->bat_v.throughput - ifinfo2->bat_v.throughput;

 batadv_neigh_ifinfo_put(ifinfo2);
err_ifinfo2:
 batadv_neigh_ifinfo_put(ifinfo1);
err_ifinfo1:
 return ret;
}

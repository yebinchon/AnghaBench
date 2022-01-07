
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct batadv_neigh_node {int dummy; } ;
struct TYPE_2__ {int tq_avg; } ;
struct batadv_neigh_ifinfo {TYPE_1__ bat_iv; } ;
struct batadv_hard_iface {int dummy; } ;


 struct batadv_neigh_ifinfo* batadv_neigh_ifinfo_get (struct batadv_neigh_node*,struct batadv_hard_iface*) ;
 int batadv_neigh_ifinfo_put (struct batadv_neigh_ifinfo*) ;

__attribute__((used)) static bool
batadv_iv_ogm_neigh_get_tq_avg(struct batadv_neigh_node *neigh_node,
          struct batadv_hard_iface *if_outgoing,
          u8 *tq_avg)
{
 struct batadv_neigh_ifinfo *n_ifinfo;

 n_ifinfo = batadv_neigh_ifinfo_get(neigh_node, if_outgoing);
 if (!n_ifinfo)
  return 0;

 *tq_avg = n_ifinfo->bat_iv.tq_avg;
 batadv_neigh_ifinfo_put(n_ifinfo);

 return 1;
}

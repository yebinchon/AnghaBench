
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct batadv_neigh_node {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;


 int BATADV_TQ_SIMILARITY_THRESHOLD ;
 int batadv_iv_ogm_neigh_diff (struct batadv_neigh_node*,struct batadv_hard_iface*,struct batadv_neigh_node*,struct batadv_hard_iface*,int*) ;

__attribute__((used)) static bool
batadv_iv_ogm_neigh_is_sob(struct batadv_neigh_node *neigh1,
      struct batadv_hard_iface *if_outgoing1,
      struct batadv_neigh_node *neigh2,
      struct batadv_hard_iface *if_outgoing2)
{
 bool ret;
 int diff;

 ret = batadv_iv_ogm_neigh_diff(neigh1, if_outgoing1, neigh2,
           if_outgoing2, &diff);
 if (!ret)
  return 0;

 ret = diff > -BATADV_TQ_SIMILARITY_THRESHOLD;
 return ret;
}

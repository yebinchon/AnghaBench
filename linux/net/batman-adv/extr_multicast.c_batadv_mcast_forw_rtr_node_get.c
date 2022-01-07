
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {int h_proto; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;




 struct batadv_orig_node* batadv_mcast_forw_rtr4_node_get (struct batadv_priv*) ;
 struct batadv_orig_node* batadv_mcast_forw_rtr6_node_get (struct batadv_priv*) ;
 int ntohs (int ) ;

__attribute__((used)) static struct batadv_orig_node *
batadv_mcast_forw_rtr_node_get(struct batadv_priv *bat_priv,
          struct ethhdr *ethhdr)
{
 switch (ntohs(ethhdr->h_proto)) {
 case 129:
  return batadv_mcast_forw_rtr4_node_get(bat_priv);
 case 128:
  return batadv_mcast_forw_rtr6_node_get(bat_priv);
 default:

  return ((void*)0);
 }
}

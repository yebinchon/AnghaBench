
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct batadv_orig_node {int dummy; } ;
struct batadv_neigh_node {int dummy; } ;
struct batadv_hard_iface {int dummy; } ;


 struct batadv_neigh_node* batadv_neigh_node_create (struct batadv_orig_node*,struct batadv_hard_iface*,int const*) ;
 struct batadv_neigh_node* batadv_neigh_node_get (struct batadv_orig_node*,struct batadv_hard_iface*,int const*) ;

struct batadv_neigh_node *
batadv_neigh_node_get_or_create(struct batadv_orig_node *orig_node,
    struct batadv_hard_iface *hard_iface,
    const u8 *neigh_addr)
{
 struct batadv_neigh_node *neigh_node;


 neigh_node = batadv_neigh_node_get(orig_node, hard_iface, neigh_addr);
 if (neigh_node)
  return neigh_node;

 return batadv_neigh_node_create(orig_node, hard_iface, neigh_addr);
}

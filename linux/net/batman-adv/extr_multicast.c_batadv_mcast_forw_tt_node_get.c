
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ethhdr {int h_dest; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;


 int BATADV_NO_FLAGS ;
 struct batadv_orig_node* batadv_transtable_search (struct batadv_priv*,int *,int ,int ) ;

__attribute__((used)) static struct batadv_orig_node *
batadv_mcast_forw_tt_node_get(struct batadv_priv *bat_priv,
         struct ethhdr *ethhdr)
{
 return batadv_transtable_search(bat_priv, ((void*)0), ethhdr->h_dest,
     BATADV_NO_FLAGS);
}

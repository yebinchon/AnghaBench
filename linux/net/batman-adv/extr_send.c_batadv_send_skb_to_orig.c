
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct batadv_priv {int fragmentation; } ;
struct batadv_orig_node {struct batadv_priv* bat_priv; } ;
struct batadv_neigh_node {TYPE_2__* if_incoming; } ;
struct batadv_hard_iface {int dummy; } ;
struct TYPE_4__ {TYPE_1__* net_dev; } ;
struct TYPE_3__ {scalar_t__ mtu; } ;


 int EINPROGRESS ;
 int EINVAL ;
 scalar_t__ atomic_read (int *) ;
 struct batadv_neigh_node* batadv_find_router (struct batadv_priv*,struct batadv_orig_node*,struct batadv_hard_iface*) ;
 int batadv_frag_send_packet (struct sk_buff*,struct batadv_orig_node*,struct batadv_neigh_node*) ;
 scalar_t__ batadv_nc_skb_forward (struct sk_buff*,struct batadv_neigh_node*) ;
 int batadv_neigh_node_put (struct batadv_neigh_node*) ;
 int batadv_send_unicast_skb (struct sk_buff*,struct batadv_neigh_node*) ;
 int kfree_skb (struct sk_buff*) ;

int batadv_send_skb_to_orig(struct sk_buff *skb,
       struct batadv_orig_node *orig_node,
       struct batadv_hard_iface *recv_if)
{
 struct batadv_priv *bat_priv = orig_node->bat_priv;
 struct batadv_neigh_node *neigh_node;
 int ret;


 neigh_node = batadv_find_router(bat_priv, orig_node, recv_if);
 if (!neigh_node) {
  ret = -EINVAL;
  goto free_skb;
 }




 if (atomic_read(&bat_priv->fragmentation) &&
     skb->len > neigh_node->if_incoming->net_dev->mtu) {

  ret = batadv_frag_send_packet(skb, orig_node, neigh_node);

  skb = ((void*)0);

  goto put_neigh_node;
 }





 if (recv_if && batadv_nc_skb_forward(skb, neigh_node))
  ret = -EINPROGRESS;
 else
  ret = batadv_send_unicast_skb(skb, neigh_node);


 skb = ((void*)0);

put_neigh_node:
 batadv_neigh_node_put(neigh_node);
free_skb:
 kfree_skb(skb);

 return ret;
}

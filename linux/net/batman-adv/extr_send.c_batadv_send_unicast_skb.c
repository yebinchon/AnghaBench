
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct batadv_neigh_node {int addr; int if_incoming; } ;
struct TYPE_2__ {int last_unicast_tx; } ;
struct batadv_hardif_neigh_node {TYPE_1__ bat_v; } ;


 int NET_XMIT_DROP ;
 struct batadv_hardif_neigh_node* batadv_hardif_neigh_get (int ,int ) ;
 int batadv_hardif_neigh_put (struct batadv_hardif_neigh_node*) ;
 int batadv_send_skb_packet (struct sk_buff*,int ,int ) ;
 int jiffies ;

int batadv_send_unicast_skb(struct sk_buff *skb,
       struct batadv_neigh_node *neigh)
{



 int ret;

 ret = batadv_send_skb_packet(skb, neigh->if_incoming, neigh->addr);
 return ret;
}

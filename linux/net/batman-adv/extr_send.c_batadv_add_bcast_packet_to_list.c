
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct batadv_priv {int bcast_queue_left; } ;
struct batadv_hard_iface {int dummy; } ;
struct batadv_forw_packet {int own; int delayed_work; } ;
struct batadv_bcast_packet {int ttl; } ;


 int GFP_ATOMIC ;
 int INIT_DELAYED_WORK (int *,int ) ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 struct batadv_forw_packet* batadv_forw_packet_alloc (struct batadv_hard_iface*,int *,int *,struct batadv_priv*,struct sk_buff*) ;
 int batadv_forw_packet_bcast_queue (struct batadv_priv*,struct batadv_forw_packet*,scalar_t__) ;
 int batadv_hardif_put (struct batadv_hard_iface*) ;
 struct batadv_hard_iface* batadv_primary_if_get_selected (struct batadv_priv*) ;
 int batadv_send_outstanding_bcast_packet ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 struct sk_buff* skb_copy (struct sk_buff const*,int ) ;

int batadv_add_bcast_packet_to_list(struct batadv_priv *bat_priv,
        const struct sk_buff *skb,
        unsigned long delay,
        bool own_packet)
{
 struct batadv_hard_iface *primary_if;
 struct batadv_forw_packet *forw_packet;
 struct batadv_bcast_packet *bcast_packet;
 struct sk_buff *newskb;

 primary_if = batadv_primary_if_get_selected(bat_priv);
 if (!primary_if)
  goto err;

 newskb = skb_copy(skb, GFP_ATOMIC);
 if (!newskb) {
  batadv_hardif_put(primary_if);
  goto err;
 }

 forw_packet = batadv_forw_packet_alloc(primary_if, ((void*)0),
            &bat_priv->bcast_queue_left,
            bat_priv, newskb);
 batadv_hardif_put(primary_if);
 if (!forw_packet)
  goto err_packet_free;


 bcast_packet = (struct batadv_bcast_packet *)newskb->data;
 bcast_packet->ttl--;

 forw_packet->own = own_packet;

 INIT_DELAYED_WORK(&forw_packet->delayed_work,
     batadv_send_outstanding_bcast_packet);

 batadv_forw_packet_bcast_queue(bat_priv, forw_packet, jiffies + delay);
 return NETDEV_TX_OK;

err_packet_free:
 kfree_skb(newskb);
err:
 return NETDEV_TX_BUSY;
}

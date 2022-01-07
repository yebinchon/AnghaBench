
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ len; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {scalar_t__ if_status; int soft_iface; } ;


 int BATADV_CNT_MGMT_TX ;
 int BATADV_CNT_MGMT_TX_BYTES ;
 scalar_t__ BATADV_IF_ACTIVE ;
 scalar_t__ ETH_HLEN ;
 int batadv_add_counter (struct batadv_priv*,int ,scalar_t__) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 int batadv_send_broadcast_skb (struct sk_buff*,struct batadv_hard_iface*) ;
 struct batadv_priv* netdev_priv (int ) ;

__attribute__((used)) static void batadv_v_ogm_send_to_if(struct sk_buff *skb,
        struct batadv_hard_iface *hard_iface)
{
 struct batadv_priv *bat_priv = netdev_priv(hard_iface->soft_iface);

 if (hard_iface->if_status != BATADV_IF_ACTIVE)
  return;

 batadv_inc_counter(bat_priv, BATADV_CNT_MGMT_TX);
 batadv_add_counter(bat_priv, BATADV_CNT_MGMT_TX_BYTES,
      skb->len + ETH_HLEN);

 batadv_send_broadcast_skb(skb, hard_iface);
}

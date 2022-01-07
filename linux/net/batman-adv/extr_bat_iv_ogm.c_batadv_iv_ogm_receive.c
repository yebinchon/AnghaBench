
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int * data; scalar_t__ len; } ;
struct batadv_priv {TYPE_2__* algo_ops; } ;
struct batadv_ogm_packet {int tvlv_len; } ;
struct batadv_hard_iface {int soft_iface; } ;
struct TYPE_3__ {scalar_t__ enable; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;


 int BATADV_CNT_MGMT_RX ;
 int BATADV_CNT_MGMT_RX_BYTES ;
 scalar_t__ BATADV_OGM_HLEN ;
 scalar_t__ ETH_HLEN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int batadv_add_counter (struct batadv_priv*,int ,scalar_t__) ;
 int batadv_check_management_packet (struct sk_buff*,struct batadv_hard_iface*,scalar_t__) ;
 int batadv_inc_counter (struct batadv_priv*,int ) ;
 scalar_t__ batadv_iv_ogm_aggr_packet (int,int ,struct batadv_ogm_packet*) ;
 scalar_t__ batadv_iv_ogm_iface_enable ;
 int batadv_iv_ogm_process (struct sk_buff*,int,struct batadv_hard_iface*) ;
 int consume_skb (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;
 scalar_t__ ntohs (int ) ;
 int skb_headlen (struct sk_buff*) ;

__attribute__((used)) static int batadv_iv_ogm_receive(struct sk_buff *skb,
     struct batadv_hard_iface *if_incoming)
{
 struct batadv_priv *bat_priv = netdev_priv(if_incoming->soft_iface);
 struct batadv_ogm_packet *ogm_packet;
 u8 *packet_pos;
 int ogm_offset;
 bool res;
 int ret = NET_RX_DROP;

 res = batadv_check_management_packet(skb, if_incoming, BATADV_OGM_HLEN);
 if (!res)
  goto free_skb;




 if (bat_priv->algo_ops->iface.enable != batadv_iv_ogm_iface_enable)
  goto free_skb;

 batadv_inc_counter(bat_priv, BATADV_CNT_MGMT_RX);
 batadv_add_counter(bat_priv, BATADV_CNT_MGMT_RX_BYTES,
      skb->len + ETH_HLEN);

 ogm_offset = 0;
 ogm_packet = (struct batadv_ogm_packet *)skb->data;


 while (batadv_iv_ogm_aggr_packet(ogm_offset, skb_headlen(skb),
      ogm_packet)) {
  batadv_iv_ogm_process(skb, ogm_offset, if_incoming);

  ogm_offset += BATADV_OGM_HLEN;
  ogm_offset += ntohs(ogm_packet->tvlv_len);

  packet_pos = skb->data + ogm_offset;
  ogm_packet = (struct batadv_ogm_packet *)packet_pos;
 }

 ret = NET_RX_SUCCESS;

free_skb:
 if (ret == NET_RX_SUCCESS)
  consume_skb(skb);
 else
  kfree_skb(skb);

 return ret;
}

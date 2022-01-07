
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct batadv_priv {int dummy; } ;
struct batadv_icmp_tp_packet {int subtype; } ;


 int BATADV_DBG_TP_METER ;


 int batadv_dbg (int ,struct batadv_priv*,char*,int) ;
 int batadv_tp_recv_ack (struct batadv_priv*,struct sk_buff*) ;
 int batadv_tp_recv_msg (struct batadv_priv*,struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;

void batadv_tp_meter_recv(struct batadv_priv *bat_priv, struct sk_buff *skb)
{
 struct batadv_icmp_tp_packet *icmp;

 icmp = (struct batadv_icmp_tp_packet *)skb->data;

 switch (icmp->subtype) {
 case 128:
  batadv_tp_recv_msg(bat_priv, skb);
  break;
 case 129:
  batadv_tp_recv_ack(bat_priv, skb);
  break;
 default:
  batadv_dbg(BATADV_DBG_TP_METER, bat_priv,
      "Received unknown TP Metric packet type %u\n",
      icmp->subtype);
 }
 consume_skb(skb);
}

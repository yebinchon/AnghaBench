
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct batadv_priv {int dummy; } ;
struct TYPE_2__ {int h_proto; } ;




 int NET_XMIT_DROP ;
 int batadv_mcast_forw_want_all_rtr4 (struct batadv_priv*,struct sk_buff*,unsigned short) ;
 int batadv_mcast_forw_want_all_rtr6 (struct batadv_priv*,struct sk_buff*,unsigned short) ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int ntohs (int ) ;

__attribute__((used)) static int
batadv_mcast_forw_want_rtr(struct batadv_priv *bat_priv,
      struct sk_buff *skb, unsigned short vid)
{
 switch (ntohs(eth_hdr(skb)->h_proto)) {
 case 129:
  return batadv_mcast_forw_want_all_rtr4(bat_priv, skb, vid);
 case 128:
  return batadv_mcast_forw_want_all_rtr6(bat_priv, skb, vid);
 default:

  return NET_XMIT_DROP;
 }
}

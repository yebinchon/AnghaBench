
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct batadv_unicast_tvlv_packet {int dst; int src; int tvlv_len; } ;
struct batadv_priv {int dummy; } ;
struct batadv_hard_iface {int soft_iface; } ;


 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 scalar_t__ batadv_check_unicast_packet (struct batadv_priv*,struct sk_buff*,int) ;
 int batadv_route_unicast_packet (struct sk_buff*,struct batadv_hard_iface*) ;
 int batadv_tvlv_containers_process (struct batadv_priv*,int,int *,int ,int ,unsigned char*,int) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;
 int ntohs (int ) ;
 scalar_t__ skb_cow (struct sk_buff*,int) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;

int batadv_recv_unicast_tvlv(struct sk_buff *skb,
        struct batadv_hard_iface *recv_if)
{
 struct batadv_priv *bat_priv = netdev_priv(recv_if->soft_iface);
 struct batadv_unicast_tvlv_packet *unicast_tvlv_packet;
 unsigned char *tvlv_buff;
 u16 tvlv_buff_len;
 int hdr_size = sizeof(*unicast_tvlv_packet);
 int ret = NET_RX_DROP;

 if (batadv_check_unicast_packet(bat_priv, skb, hdr_size) < 0)
  goto free_skb;


 if (skb_cow(skb, hdr_size) < 0)
  goto free_skb;


 if (skb_linearize(skb) < 0)
  goto free_skb;

 unicast_tvlv_packet = (struct batadv_unicast_tvlv_packet *)skb->data;

 tvlv_buff = (unsigned char *)(skb->data + hdr_size);
 tvlv_buff_len = ntohs(unicast_tvlv_packet->tvlv_len);

 if (tvlv_buff_len > skb->len - hdr_size)
  goto free_skb;

 ret = batadv_tvlv_containers_process(bat_priv, 0, ((void*)0),
          unicast_tvlv_packet->src,
          unicast_tvlv_packet->dst,
          tvlv_buff, tvlv_buff_len);

 if (ret != NET_RX_SUCCESS) {
  ret = batadv_route_unicast_packet(skb, recv_if);

  skb = ((void*)0);
 }

free_skb:
 kfree_skb(skb);

 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; scalar_t__ data; } ;
struct ethhdr {int h_dest; int h_source; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {int dummy; } ;
struct batadv_icmp_packet_rr {size_t rr_cur; int * rr; } ;
struct batadv_icmp_header {scalar_t__ msg_type; int ttl; int dst; } ;
struct batadv_hard_iface {int soft_iface; } ;


 scalar_t__ BATADV_ECHO_REPLY ;
 scalar_t__ BATADV_ECHO_REQUEST ;
 size_t BATADV_RR_LEN ;
 int ETH_HLEN ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int NET_XMIT_SUCCESS ;
 scalar_t__ batadv_is_my_mac (struct batadv_priv*,int ) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int ) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int batadv_recv_icmp_ttl_exceeded (struct batadv_priv*,struct sk_buff*) ;
 int batadv_recv_my_icmp_packet (struct batadv_priv*,struct sk_buff*) ;
 int batadv_send_skb_to_orig (struct sk_buff*,struct batadv_orig_node*,struct batadv_hard_iface*) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int is_valid_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 scalar_t__ skb_cow (struct sk_buff*,int ) ;
 scalar_t__ skb_linearize (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int batadv_recv_icmp_packet(struct sk_buff *skb,
       struct batadv_hard_iface *recv_if)
{
 struct batadv_priv *bat_priv = netdev_priv(recv_if->soft_iface);
 struct batadv_icmp_header *icmph;
 struct batadv_icmp_packet_rr *icmp_packet_rr;
 struct ethhdr *ethhdr;
 struct batadv_orig_node *orig_node = ((void*)0);
 int hdr_size = sizeof(struct batadv_icmp_header);
 int res, ret = NET_RX_DROP;


 if (unlikely(!pskb_may_pull(skb, hdr_size)))
  goto free_skb;

 ethhdr = eth_hdr(skb);


 if (!is_valid_ether_addr(ethhdr->h_dest))
  goto free_skb;


 if (is_multicast_ether_addr(ethhdr->h_source))
  goto free_skb;


 if (!batadv_is_my_mac(bat_priv, ethhdr->h_dest))
  goto free_skb;

 icmph = (struct batadv_icmp_header *)skb->data;


 if ((icmph->msg_type == BATADV_ECHO_REPLY ||
      icmph->msg_type == BATADV_ECHO_REQUEST) &&
     skb->len >= sizeof(struct batadv_icmp_packet_rr)) {
  if (skb_linearize(skb) < 0)
   goto free_skb;


  if (skb_cow(skb, ETH_HLEN) < 0)
   goto free_skb;

  ethhdr = eth_hdr(skb);
  icmph = (struct batadv_icmp_header *)skb->data;
  icmp_packet_rr = (struct batadv_icmp_packet_rr *)icmph;
  if (icmp_packet_rr->rr_cur >= BATADV_RR_LEN)
   goto free_skb;

  ether_addr_copy(icmp_packet_rr->rr[icmp_packet_rr->rr_cur],
    ethhdr->h_dest);
  icmp_packet_rr->rr_cur++;
 }


 if (batadv_is_my_mac(bat_priv, icmph->dst))
  return batadv_recv_my_icmp_packet(bat_priv, skb);


 if (icmph->ttl < 2)
  return batadv_recv_icmp_ttl_exceeded(bat_priv, skb);


 orig_node = batadv_orig_hash_find(bat_priv, icmph->dst);
 if (!orig_node)
  goto free_skb;


 if (skb_cow(skb, ETH_HLEN) < 0)
  goto put_orig_node;

 icmph = (struct batadv_icmp_header *)skb->data;


 icmph->ttl--;


 res = batadv_send_skb_to_orig(skb, orig_node, recv_if);
 if (res == NET_XMIT_SUCCESS)
  ret = NET_RX_SUCCESS;


 skb = ((void*)0);

put_orig_node:
 if (orig_node)
  batadv_orig_node_put(orig_node);
free_skb:
 kfree_skb(skb);

 return ret;
}

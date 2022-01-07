
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ethhdr {int h_source; int h_dest; } ;
struct batadv_priv {int dummy; } ;
struct batadv_orig_node {void* last_bcast_seqno; int bcast_seqno_lock; int bcast_bits; int bcast_seqno_reset; } ;
struct batadv_hard_iface {int soft_iface; } ;
struct batadv_bcast_packet {int ttl; int seqno; int orig; } ;
typedef void* s32 ;


 int BATADV_BCAST_MAX_AGE ;
 int NET_RX_DROP ;
 int NET_RX_SUCCESS ;
 int batadv_add_bcast_packet_to_list (struct batadv_priv*,struct sk_buff*,int,int) ;
 scalar_t__ batadv_bit_get_packet (struct batadv_priv*,int ,void*,int) ;
 scalar_t__ batadv_bla_check_bcast_duplist (struct batadv_priv*,struct sk_buff*) ;
 scalar_t__ batadv_bla_is_backbone_gw (struct sk_buff*,struct batadv_orig_node*,int) ;
 scalar_t__ batadv_dat_snoop_incoming_arp_reply (struct batadv_priv*,struct sk_buff*,int) ;
 scalar_t__ batadv_dat_snoop_incoming_arp_request (struct batadv_priv*,struct sk_buff*,int) ;
 int batadv_dat_snoop_incoming_dhcp_ack (struct batadv_priv*,struct sk_buff*,int) ;
 int batadv_interface_rx (int ,struct sk_buff*,int,struct batadv_orig_node*) ;
 scalar_t__ batadv_is_my_mac (struct batadv_priv*,int ) ;
 struct batadv_orig_node* batadv_orig_hash_find (struct batadv_priv*,int ) ;
 int batadv_orig_node_put (struct batadv_orig_node*) ;
 int batadv_skb_set_priority (struct sk_buff*,int) ;
 scalar_t__ batadv_test_bit (int ,void*,void*) ;
 scalar_t__ batadv_window_protected (struct batadv_priv*,void*,int ,int *,int *) ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int is_broadcast_ether_addr (int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int kfree_skb (struct sk_buff*) ;
 struct batadv_priv* netdev_priv (int ) ;
 void* ntohl (int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ unlikely (int) ;

int batadv_recv_bcast_packet(struct sk_buff *skb,
        struct batadv_hard_iface *recv_if)
{
 struct batadv_priv *bat_priv = netdev_priv(recv_if->soft_iface);
 struct batadv_orig_node *orig_node = ((void*)0);
 struct batadv_bcast_packet *bcast_packet;
 struct ethhdr *ethhdr;
 int hdr_size = sizeof(*bcast_packet);
 int ret = NET_RX_DROP;
 s32 seq_diff;
 u32 seqno;


 if (unlikely(!pskb_may_pull(skb, hdr_size)))
  goto free_skb;

 ethhdr = eth_hdr(skb);


 if (!is_broadcast_ether_addr(ethhdr->h_dest))
  goto free_skb;


 if (is_multicast_ether_addr(ethhdr->h_source))
  goto free_skb;


 if (batadv_is_my_mac(bat_priv, ethhdr->h_source))
  goto free_skb;

 bcast_packet = (struct batadv_bcast_packet *)skb->data;


 if (batadv_is_my_mac(bat_priv, bcast_packet->orig))
  goto free_skb;

 if (bcast_packet->ttl < 2)
  goto free_skb;

 orig_node = batadv_orig_hash_find(bat_priv, bcast_packet->orig);

 if (!orig_node)
  goto free_skb;

 spin_lock_bh(&orig_node->bcast_seqno_lock);

 seqno = ntohl(bcast_packet->seqno);

 if (batadv_test_bit(orig_node->bcast_bits, orig_node->last_bcast_seqno,
       seqno))
  goto spin_unlock;

 seq_diff = seqno - orig_node->last_bcast_seqno;


 if (batadv_window_protected(bat_priv, seq_diff,
        BATADV_BCAST_MAX_AGE,
        &orig_node->bcast_seqno_reset, ((void*)0)))
  goto spin_unlock;




 if (batadv_bit_get_packet(bat_priv, orig_node->bcast_bits, seq_diff, 1))
  orig_node->last_bcast_seqno = seqno;

 spin_unlock_bh(&orig_node->bcast_seqno_lock);


 if (batadv_bla_check_bcast_duplist(bat_priv, skb))
  goto free_skb;

 batadv_skb_set_priority(skb, sizeof(struct batadv_bcast_packet));


 batadv_add_bcast_packet_to_list(bat_priv, skb, 1, 0);




 if (batadv_bla_is_backbone_gw(skb, orig_node, hdr_size))
  goto free_skb;

 if (batadv_dat_snoop_incoming_arp_request(bat_priv, skb, hdr_size))
  goto rx_success;
 if (batadv_dat_snoop_incoming_arp_reply(bat_priv, skb, hdr_size))
  goto rx_success;

 batadv_dat_snoop_incoming_dhcp_ack(bat_priv, skb, hdr_size);


 batadv_interface_rx(recv_if->soft_iface, skb, hdr_size, orig_node);

rx_success:
 ret = NET_RX_SUCCESS;
 goto out;

spin_unlock:
 spin_unlock_bh(&orig_node->bcast_seqno_lock);
free_skb:
 kfree_skb(skb);
out:
 if (orig_node)
  batadv_orig_node_put(orig_node);
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw_flow_key {int mac_proto; } ;
struct sk_buff {int protocol; } ;
struct TYPE_2__ {int eth_dst; int eth_src; } ;
struct ovs_action_push_eth {TYPE_1__ addresses; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;


 int ENOMEM ;
 int ETH_HLEN ;
 int MAC_PROTO_ETHERNET ;
 struct ethhdr* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 int invalidate_flow_key (struct sw_flow_key*) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 int skb_postpush_rcsum (struct sk_buff*,struct ethhdr*,int ) ;
 int skb_push (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_mac_len (struct sk_buff*) ;

__attribute__((used)) static int push_eth(struct sk_buff *skb, struct sw_flow_key *key,
      const struct ovs_action_push_eth *ethh)
{
 struct ethhdr *hdr;


 if (skb_cow_head(skb, ETH_HLEN) < 0)
  return -ENOMEM;

 skb_push(skb, ETH_HLEN);
 skb_reset_mac_header(skb);
 skb_reset_mac_len(skb);

 hdr = eth_hdr(skb);
 ether_addr_copy(hdr->h_source, ethh->addresses.eth_src);
 ether_addr_copy(hdr->h_dest, ethh->addresses.eth_dst);
 hdr->h_proto = skb->protocol;

 skb_postpush_rcsum(skb, hdr, ETH_HLEN);


 key->mac_proto = MAC_PROTO_ETHERNET;
 invalidate_flow_key(key);
 return 0;
}

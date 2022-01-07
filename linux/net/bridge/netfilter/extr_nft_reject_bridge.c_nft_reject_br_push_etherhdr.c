
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ethhdr {int h_proto; int h_dest; int h_source; } ;
struct TYPE_2__ {int h_proto; int h_source; int h_dest; } ;


 int ETH_HLEN ;
 TYPE_1__* eth_hdr (struct sk_buff*) ;
 int ether_addr_copy (int ,int ) ;
 int skb_pull (struct sk_buff*,int ) ;
 struct ethhdr* skb_push (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static void nft_reject_br_push_etherhdr(struct sk_buff *oldskb,
     struct sk_buff *nskb)
{
 struct ethhdr *eth;

 eth = skb_push(nskb, ETH_HLEN);
 skb_reset_mac_header(nskb);
 ether_addr_copy(eth->h_source, eth_hdr(oldskb)->h_dest);
 ether_addr_copy(eth->h_dest, eth_hdr(oldskb)->h_source);
 eth->h_proto = eth_hdr(oldskb)->h_proto;
 skb_pull(nskb, ETH_HLEN);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int mac_proto; } ;
struct sk_buff {int dummy; } ;


 int ETH_HLEN ;
 int MAC_PROTO_NONE ;
 int invalidate_flow_key (struct sw_flow_key*) ;
 int skb_pull_rcsum (struct sk_buff*,int ) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int skb_reset_mac_len (struct sk_buff*) ;

__attribute__((used)) static int pop_eth(struct sk_buff *skb, struct sw_flow_key *key)
{
 skb_pull_rcsum(skb, ETH_HLEN);
 skb_reset_mac_header(skb);
 skb_reset_mac_len(skb);


 key->mac_proto = MAC_PROTO_NONE;
 invalidate_flow_key(key);
 return 0;
}

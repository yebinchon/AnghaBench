
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ethhdr {int h_proto; } ;
typedef int __be16 ;


 struct ethhdr* eth_hdr (struct sk_buff const*) ;

__be16 eth_header_parse_protocol(const struct sk_buff *skb)
{
 const struct ethhdr *eth = eth_hdr(skb);

 return eth->h_proto;
}

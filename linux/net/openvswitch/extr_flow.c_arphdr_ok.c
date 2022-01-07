
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct arp_eth_header {int dummy; } ;


 int pskb_may_pull (struct sk_buff*,scalar_t__) ;
 scalar_t__ skb_network_offset (struct sk_buff*) ;

__attribute__((used)) static bool arphdr_ok(struct sk_buff *skb)
{
 return pskb_may_pull(skb, skb_network_offset(skb) +
      sizeof(struct arp_eth_header));
}

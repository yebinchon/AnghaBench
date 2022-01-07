
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pppoe_hdr {int dummy; } ;
typedef int __be16 ;


 scalar_t__ ETH_HLEN ;
 scalar_t__ skb_mac_header (struct sk_buff const*) ;

__attribute__((used)) static inline __be16 pppoe_proto(const struct sk_buff *skb)
{
 return *((__be16 *)(skb_mac_header(skb) + ETH_HLEN +
       sizeof(struct pppoe_hdr)));
}

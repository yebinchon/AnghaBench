
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct nf_bridge_info {int ipv6_daddr; } ;
struct TYPE_2__ {int daddr; } ;


 TYPE_1__* ipv6_hdr (struct sk_buff const*) ;
 scalar_t__ memcmp (int *,int *,int) ;

__attribute__((used)) static inline bool
br_nf_ipv6_daddr_was_changed(const struct sk_buff *skb,
        const struct nf_bridge_info *nf_bridge)
{
 return memcmp(&nf_bridge->ipv6_daddr, &ipv6_hdr(skb)->daddr,
        sizeof(ipv6_hdr(skb)->daddr)) != 0;
}

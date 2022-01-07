
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sk_buff {int protocol; } const sk_buff ;
struct ipv6hdr {int hop_limit; int saddr; int daddr; int nexthdr; } ;
typedef int __u8 ;


 int DEFAULT_TOS_VALUE ;
 int ETH_P_IPV6 ;
 int htons (int ) ;
 int ip6_flow_hdr (struct ipv6hdr*,int const,int ) ;
 void* ipv6_hdr (struct sk_buff const*) ;
 int skb_put (struct sk_buff const*,int) ;
 int skb_reset_network_header (struct sk_buff const*) ;

struct ipv6hdr *nf_reject_ip6hdr_put(struct sk_buff *nskb,
         const struct sk_buff *oldskb,
         __u8 protocol, int hoplimit)
{
 struct ipv6hdr *ip6h;
 const struct ipv6hdr *oip6h = ipv6_hdr(oldskb);

 const __u8 tclass = 0x0U;

 skb_put(nskb, sizeof(struct ipv6hdr));
 skb_reset_network_header(nskb);
 ip6h = ipv6_hdr(nskb);
 ip6_flow_hdr(ip6h, tclass, 0);
 ip6h->hop_limit = hoplimit;
 ip6h->nexthdr = protocol;
 ip6h->saddr = oip6h->daddr;
 ip6h->daddr = oip6h->saddr;

 nskb->protocol = htons(ETH_P_IPV6);

 return ip6h;
}

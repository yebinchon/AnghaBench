
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {struct net_device* dev; void* protocol; } ;
struct net_device {int dummy; } ;
struct in6_addr {int dummy; } ;
struct ipv6hdr {int nexthdr; struct in6_addr daddr; struct in6_addr saddr; int hop_limit; void* payload_len; } ;
struct TYPE_2__ {int hop_limit; } ;


 int ETH_P_IPV6 ;
 void* htons (int) ;
 TYPE_1__* inet6_sk (struct sock*) ;
 int ip6_flow_hdr (struct ipv6hdr*,int ,int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;

__attribute__((used)) static void ip6_mc_hdr(struct sock *sk, struct sk_buff *skb,
         struct net_device *dev,
         const struct in6_addr *saddr,
         const struct in6_addr *daddr,
         int proto, int len)
{
 struct ipv6hdr *hdr;

 skb->protocol = htons(ETH_P_IPV6);
 skb->dev = dev;

 skb_reset_network_header(skb);
 skb_put(skb, sizeof(struct ipv6hdr));
 hdr = ipv6_hdr(skb);

 ip6_flow_hdr(hdr, 0, 0);

 hdr->payload_len = htons(len);
 hdr->nexthdr = proto;
 hdr->hop_limit = inet6_sk(sk)->hop_limit;

 hdr->saddr = *saddr;
 hdr->daddr = *daddr;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {int mark; scalar_t__ data; int dev; } ;
struct net {int dummy; } ;
struct iphdr {int ihl; int daddr; } ;
struct ip_comp_hdr {int cpi; } ;
typedef int __be32 ;
struct TYPE_2__ {int type; int code; } ;


 int AF_INET ;

 int ICMP_FRAG_NEEDED ;

 int IPPROTO_COMP ;
 struct net* dev_net (int ) ;
 int htonl (int ) ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 int ipv4_redirect (struct sk_buff*,struct net*,int ,int ) ;
 int ipv4_update_pmtu (struct sk_buff*,struct net*,int ,int ,int ) ;
 int ntohs (int ) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int ,int const*,int ,int ,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int ipcomp4_err(struct sk_buff *skb, u32 info)
{
 struct net *net = dev_net(skb->dev);
 __be32 spi;
 const struct iphdr *iph = (const struct iphdr *)skb->data;
 struct ip_comp_hdr *ipch = (struct ip_comp_hdr *)(skb->data+(iph->ihl<<2));
 struct xfrm_state *x;

 switch (icmp_hdr(skb)->type) {
 case 129:
  if (icmp_hdr(skb)->code != ICMP_FRAG_NEEDED)
   return 0;
 case 128:
  break;
 default:
  return 0;
 }

 spi = htonl(ntohs(ipch->cpi));
 x = xfrm_state_lookup(net, skb->mark, (const xfrm_address_t *)&iph->daddr,
         spi, IPPROTO_COMP, AF_INET);
 if (!x)
  return 0;

 if (icmp_hdr(skb)->type == 129)
  ipv4_update_pmtu(skb, net, info, 0, IPPROTO_COMP);
 else
  ipv4_redirect(skb, net, 0, IPPROTO_COMP);
 xfrm_state_put(x);

 return 0;
}

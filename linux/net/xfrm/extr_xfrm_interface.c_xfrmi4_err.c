
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct xfrm_if {int dummy; } ;
struct sk_buff {int mark; scalar_t__ data; int dev; } ;
struct net {int dummy; } ;
struct iphdr {int protocol; int ihl; int daddr; } ;
struct ip_esp_hdr {int spi; } ;
struct ip_comp_hdr {int cpi; } ;
struct ip_auth_hdr {int spi; } ;
typedef int __be32 ;
struct TYPE_2__ {int type; int code; } ;


 int AF_INET ;

 int ICMP_FRAG_NEEDED ;




 struct net* dev_net (int ) ;
 int htonl (int ) ;
 TYPE_1__* icmp_hdr (struct sk_buff*) ;
 int ipv4_redirect (struct sk_buff*,struct net*,int ,int) ;
 int ipv4_update_pmtu (struct sk_buff*,struct net*,int ,int ,int) ;
 int ntohs (int ) ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int ,int const*,int ,int,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;
 struct xfrm_if* xfrmi_lookup (struct net*,struct xfrm_state*) ;

__attribute__((used)) static int xfrmi4_err(struct sk_buff *skb, u32 info)
{
 const struct iphdr *iph = (const struct iphdr *)skb->data;
 struct net *net = dev_net(skb->dev);
 int protocol = iph->protocol;
 struct ip_comp_hdr *ipch;
 struct ip_esp_hdr *esph;
 struct ip_auth_hdr *ah ;
 struct xfrm_state *x;
 struct xfrm_if *xi;
 __be32 spi;

 switch (protocol) {
 case 128:
  esph = (struct ip_esp_hdr *)(skb->data+(iph->ihl<<2));
  spi = esph->spi;
  break;
 case 130:
  ah = (struct ip_auth_hdr *)(skb->data+(iph->ihl<<2));
  spi = ah->spi;
  break;
 case 129:
  ipch = (struct ip_comp_hdr *)(skb->data+(iph->ihl<<2));
  spi = htonl(ntohs(ipch->cpi));
  break;
 default:
  return 0;
 }

 switch (icmp_hdr(skb)->type) {
 case 132:
  if (icmp_hdr(skb)->code != ICMP_FRAG_NEEDED)
   return 0;
 case 131:
  break;
 default:
  return 0;
 }

 x = xfrm_state_lookup(net, skb->mark, (const xfrm_address_t *)&iph->daddr,
         spi, protocol, AF_INET);
 if (!x)
  return 0;

 xi = xfrmi_lookup(net, x);
 if (!xi) {
  xfrm_state_put(x);
  return -1;
 }

 if (icmp_hdr(skb)->type == 132)
  ipv4_update_pmtu(skb, net, info, 0, protocol);
 else
  ipv4_redirect(skb, net, 0, protocol);
 xfrm_state_put(x);

 return 0;
}

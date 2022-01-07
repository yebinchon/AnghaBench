
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int xfrm_address_t ;
typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct sk_buff {scalar_t__ data; TYPE_3__* dev; } ;
struct net {int dummy; } ;
struct iphdr {int protocol; int ihl; int daddr; int saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct TYPE_4__ {int o_key; } ;
struct ip_tunnel {TYPE_1__ parms; } ;
struct ip_esp_hdr {int spi; } ;
struct ip_comp_hdr {int cpi; } ;
struct ip_auth_hdr {int spi; } ;
typedef int __u32 ;
typedef int __be32 ;
struct TYPE_6__ {int ifindex; } ;
struct TYPE_5__ {int type; int code; } ;


 int AF_INET ;

 int ICMP_FRAG_NEEDED ;




 int TUNNEL_NO_KEY ;
 int be32_to_cpu (int ) ;
 struct net* dev_net (TYPE_3__*) ;
 int htonl (int ) ;
 TYPE_2__* icmp_hdr (struct sk_buff*) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int ,int ,int ,int ) ;
 int ipv4_redirect (struct sk_buff*,struct net*,int ,int) ;
 int ipv4_update_pmtu (struct sk_buff*,struct net*,int ,int ,int) ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 int ntohs (int ) ;
 int vti_net_id ;
 struct xfrm_state* xfrm_state_lookup (struct net*,int ,int const*,int ,int,int ) ;
 int xfrm_state_put (struct xfrm_state*) ;

__attribute__((used)) static int vti4_err(struct sk_buff *skb, u32 info)
{
 __be32 spi;
 __u32 mark;
 struct xfrm_state *x;
 struct ip_tunnel *tunnel;
 struct ip_esp_hdr *esph;
 struct ip_auth_hdr *ah ;
 struct ip_comp_hdr *ipch;
 struct net *net = dev_net(skb->dev);
 const struct iphdr *iph = (const struct iphdr *)skb->data;
 int protocol = iph->protocol;
 struct ip_tunnel_net *itn = net_generic(net, vti_net_id);

 tunnel = ip_tunnel_lookup(itn, skb->dev->ifindex, TUNNEL_NO_KEY,
      iph->daddr, iph->saddr, 0);
 if (!tunnel)
  return -1;

 mark = be32_to_cpu(tunnel->parms.o_key);

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

 x = xfrm_state_lookup(net, mark, (const xfrm_address_t *)&iph->daddr,
         spi, protocol, AF_INET);
 if (!x)
  return 0;

 if (icmp_hdr(skb)->type == 132)
  ipv4_update_pmtu(skb, net, info, 0, protocol);
 else
  ipv4_redirect(skb, net, 0, protocol);
 xfrm_state_put(x);

 return 0;
}

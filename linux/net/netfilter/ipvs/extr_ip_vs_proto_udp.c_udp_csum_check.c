
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udphdr {scalar_t__ check; } ;
struct sk_buff {int ip_summed; int csum; int len; } ;
struct ipv6hdr {int dummy; } ;
struct ip_vs_protocol {int dummy; } ;
typedef int _udph ;
struct TYPE_4__ {int protocol; int daddr; int saddr; } ;
struct TYPE_3__ {int nexthdr; int daddr; int saddr; } ;


 int AF_INET6 ;


 int IP_VS_DBG_RL_PKT (int ,int,struct ip_vs_protocol*,struct sk_buff*,int ,char*) ;
 int csum_ipv6_magic (int *,int *,int ,int ,int ) ;
 int csum_tcpudp_magic (int ,int ,int ,int ,int ) ;
 TYPE_2__* ip_hdr (struct sk_buff*) ;
 unsigned int ip_hdrlen (struct sk_buff*) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 int skb_checksum (struct sk_buff*,unsigned int,int ,int ) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct udphdr*) ;

__attribute__((used)) static int
udp_csum_check(int af, struct sk_buff *skb, struct ip_vs_protocol *pp)
{
 struct udphdr _udph, *uh;
 unsigned int udphoff;






  udphoff = ip_hdrlen(skb);

 uh = skb_header_pointer(skb, udphoff, sizeof(_udph), &_udph);
 if (uh == ((void*)0))
  return 0;

 if (uh->check != 0) {
  switch (skb->ip_summed) {
  case 128:
   skb->csum = skb_checksum(skb, udphoff,
       skb->len - udphoff, 0);

  case 129:
    if (csum_tcpudp_magic(ip_hdr(skb)->saddr,
            ip_hdr(skb)->daddr,
            skb->len - udphoff,
            ip_hdr(skb)->protocol,
            skb->csum)) {
     IP_VS_DBG_RL_PKT(0, af, pp, skb, 0,
        "Failed checksum for");
     return 0;
    }
   break;
  default:

   break;
  }
 }
 return 1;
}

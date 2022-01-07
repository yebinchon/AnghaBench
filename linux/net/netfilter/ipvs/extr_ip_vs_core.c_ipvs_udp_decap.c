
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct udphdr {scalar_t__ control; scalar_t__ version; scalar_t__ proto_ctype; int hlen; int dest; } ;
struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_dest {scalar_t__ tun_type; } ;
struct guehdr {scalar_t__ control; scalar_t__ version; scalar_t__ proto_ctype; int hlen; int dest; } ;
typedef int _udph ;
typedef int _gueh ;
typedef scalar_t__ __u8 ;
typedef int __u16 ;


 scalar_t__ IPPROTO_IPIP ;
 scalar_t__ IP_VS_CONN_F_TUNNEL_TYPE_GUE ;
 struct ip_vs_dest* ip_vs_find_tunnel (struct netns_ipvs*,int ,union nf_inet_addr const*,int ) ;
 struct udphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct udphdr*) ;

__attribute__((used)) static int ipvs_udp_decap(struct netns_ipvs *ipvs, struct sk_buff *skb,
     unsigned int offset, __u16 af,
     const union nf_inet_addr *daddr, __u8 *proto)
{
 struct udphdr _udph, *udph;
 struct ip_vs_dest *dest;

 udph = skb_header_pointer(skb, offset, sizeof(_udph), &_udph);
 if (!udph)
  goto unk;
 offset += sizeof(struct udphdr);
 dest = ip_vs_find_tunnel(ipvs, af, daddr, udph->dest);
 if (!dest)
  goto unk;
 if (dest->tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
  struct guehdr _gueh, *gueh;

  gueh = skb_header_pointer(skb, offset, sizeof(_gueh), &_gueh);
  if (!gueh)
   goto unk;
  if (gueh->control != 0 || gueh->version != 0)
   goto unk;

  if (gueh->proto_ctype != IPPROTO_IPIP)
   goto unk;
  *proto = gueh->proto_ctype;
  return sizeof(struct udphdr) + sizeof(struct guehdr) +
         (gueh->hlen << 2);
 }

unk:
 return 0;
}

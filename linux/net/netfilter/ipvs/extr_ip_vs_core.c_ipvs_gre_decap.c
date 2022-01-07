
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_dest {scalar_t__ tun_type; } ;
struct gre_base_hdr {int flags; scalar_t__ protocol; } ;
typedef int _greh ;
typedef int __u8 ;
typedef int __u16 ;
typedef scalar_t__ __be16 ;


 int ETH_P_IP ;
 int GRE_CSUM ;
 int IPPROTO_IPIP ;
 scalar_t__ IP_VS_CONN_F_TUNNEL_TYPE_GRE ;
 int gre_calc_hlen (int ) ;
 int gre_flags_to_tnl_flags (int) ;
 scalar_t__ htons (int ) ;
 struct ip_vs_dest* ip_vs_find_tunnel (struct netns_ipvs*,int ,union nf_inet_addr const*,int ) ;
 struct gre_base_hdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct gre_base_hdr*) ;

__attribute__((used)) static int ipvs_gre_decap(struct netns_ipvs *ipvs, struct sk_buff *skb,
     unsigned int offset, __u16 af,
     const union nf_inet_addr *daddr, __u8 *proto)
{
 struct gre_base_hdr _greh, *greh;
 struct ip_vs_dest *dest;

 greh = skb_header_pointer(skb, offset, sizeof(_greh), &_greh);
 if (!greh)
  goto unk;
 dest = ip_vs_find_tunnel(ipvs, af, daddr, 0);
 if (!dest)
  goto unk;
 if (dest->tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE) {
  __be16 type;


  if ((greh->flags & ~GRE_CSUM) != 0)
   goto unk;
  type = greh->protocol;

  if (type != htons(ETH_P_IP))
   goto unk;
  *proto = IPPROTO_IPIP;
  return gre_calc_hlen(gre_flags_to_tnl_flags(greh->flags));
 }

unk:
 return 0;
}

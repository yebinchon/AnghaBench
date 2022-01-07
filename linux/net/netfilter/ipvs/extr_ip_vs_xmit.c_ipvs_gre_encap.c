
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ip_vs_conn {TYPE_1__* dest; } ;
typedef scalar_t__ __u8 ;
typedef int __be16 ;
struct TYPE_2__ {int tun_flags; } ;


 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 scalar_t__ IPPROTO_GRE ;
 scalar_t__ IPPROTO_IPIP ;
 int IP_VS_TUNNEL_ENCAP_FLAG_CSUM ;
 int TUNNEL_CSUM ;
 int gre_build_header (struct sk_buff*,size_t,int ,int ,int ,int ) ;
 size_t gre_calc_hlen (int ) ;
 int htons (int ) ;

__attribute__((used)) static void
ipvs_gre_encap(struct net *net, struct sk_buff *skb,
        struct ip_vs_conn *cp, __u8 *next_protocol)
{
 __be16 proto = *next_protocol == IPPROTO_IPIP ?
    htons(ETH_P_IP) : htons(ETH_P_IPV6);
 __be16 tflags = 0;
 size_t hdrlen;

 if (cp->dest->tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM)
  tflags |= TUNNEL_CSUM;

 hdrlen = gre_calc_hlen(tflags);
 gre_build_header(skb, hdrlen, tflags, proto, 0, 0);

 *next_protocol = IPPROTO_GRE;
}

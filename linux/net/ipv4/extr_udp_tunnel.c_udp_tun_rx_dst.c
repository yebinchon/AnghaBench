
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_5__ {int tun_flags; int tp_dst; int tp_src; } ;
struct ip_tunnel_info {TYPE_2__ key; } ;
struct TYPE_4__ {struct ip_tunnel_info tun_info; } ;
struct metadata_dst {TYPE_1__ u; } ;
typedef int __be64 ;
typedef int __be16 ;
struct TYPE_6__ {scalar_t__ check; int dest; int source; } ;


 unsigned short AF_INET ;
 int TUNNEL_CSUM ;
 struct metadata_dst* ip_tun_rx_dst (struct sk_buff*,int ,int ,int) ;
 struct metadata_dst* ipv6_tun_rx_dst (struct sk_buff*,int ,int ,int) ;
 TYPE_3__* udp_hdr (struct sk_buff*) ;

struct metadata_dst *udp_tun_rx_dst(struct sk_buff *skb, unsigned short family,
        __be16 flags, __be64 tunnel_id, int md_size)
{
 struct metadata_dst *tun_dst;
 struct ip_tunnel_info *info;

 if (family == AF_INET)
  tun_dst = ip_tun_rx_dst(skb, flags, tunnel_id, md_size);
 else
  tun_dst = ipv6_tun_rx_dst(skb, flags, tunnel_id, md_size);
 if (!tun_dst)
  return ((void*)0);

 info = &tun_dst->u.tun_info;
 info->key.tp_src = udp_hdr(skb)->source;
 info->key.tp_dst = udp_hdr(skb)->dest;
 if (udp_hdr(skb)->check)
  info->key.tun_flags |= TUNNEL_CSUM;
 return tun_dst;
}

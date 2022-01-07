
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tnl_ptk_info {int flags; int key; int proto; } ;
struct sk_buff {TYPE_1__* dev; } ;
struct metadata_dst {int dummy; } ;
struct iphdr {int daddr; int saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {scalar_t__ collect_md; TYPE_2__* dev; } ;
typedef int __be64 ;
typedef int __be16 ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int ifindex; } ;


 scalar_t__ ARPHRD_NONE ;
 int PACKET_NEXT ;
 int PACKET_RCVD ;
 int PACKET_REJECT ;
 int TUNNEL_CSUM ;
 int TUNNEL_KEY ;
 scalar_t__ __iptunnel_pull_header (struct sk_buff*,int,int ,int,int) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct metadata_dst* ip_tun_rx_dst (struct sk_buff*,int,int ,int ) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int,int ,int ,int ) ;
 int ip_tunnel_rcv (struct ip_tunnel*,struct sk_buff*,struct tnl_ptk_info const*,struct metadata_dst*,int ) ;
 int key32_to_tunnel_id (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int log_ecn_error ;
 int skb_pop_mac_header (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;

__attribute__((used)) static int __ipgre_rcv(struct sk_buff *skb, const struct tnl_ptk_info *tpi,
         struct ip_tunnel_net *itn, int hdr_len, bool raw_proto)
{
 struct metadata_dst *tun_dst = ((void*)0);
 const struct iphdr *iph;
 struct ip_tunnel *tunnel;

 iph = ip_hdr(skb);
 tunnel = ip_tunnel_lookup(itn, skb->dev->ifindex, tpi->flags,
      iph->saddr, iph->daddr, tpi->key);

 if (tunnel) {
  if (__iptunnel_pull_header(skb, hdr_len, tpi->proto,
        raw_proto, 0) < 0)
   goto drop;

  if (tunnel->dev->type != ARPHRD_NONE)
   skb_pop_mac_header(skb);
  else
   skb_reset_mac_header(skb);
  if (tunnel->collect_md) {
   __be16 flags;
   __be64 tun_id;

   flags = tpi->flags & (TUNNEL_CSUM | TUNNEL_KEY);
   tun_id = key32_to_tunnel_id(tpi->key);
   tun_dst = ip_tun_rx_dst(skb, flags, tun_id, 0);
   if (!tun_dst)
    return PACKET_REJECT;
  }

  ip_tunnel_rcv(tunnel, skb, tpi, tun_dst, log_ecn_error);
  return PACKET_RCVD;
 }
 return PACKET_NEXT;

drop:
 kfree_skb(skb);
 return PACKET_RCVD;
}

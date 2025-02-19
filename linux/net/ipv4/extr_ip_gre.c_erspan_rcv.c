
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tnl_ptk_info {int flags; int key; } ;
struct sk_buff {TYPE_4__* dev; scalar_t__ data; } ;
struct net {int dummy; } ;
struct TYPE_7__ {int tun_flags; } ;
struct ip_tunnel_info {int options_len; TYPE_3__ key; } ;
struct TYPE_6__ {struct ip_tunnel_info tun_info; } ;
struct metadata_dst {TYPE_2__ u; } ;
struct iphdr {int daddr; int saddr; } ;
struct ip_tunnel_net {int dummy; } ;
struct ip_tunnel {scalar_t__ collect_md; } ;
struct erspan_md2 {int dummy; } ;
struct TYPE_5__ {struct erspan_md2 md2; } ;
struct erspan_metadata {int version; TYPE_1__ u; } ;
struct erspan_base_hdr {int ver; } ;
typedef int __be64 ;
typedef int __be16 ;
struct TYPE_8__ {int ifindex; } ;


 int ERSPAN_V1_MDSIZE ;
 int ERSPAN_V2_MDSIZE ;
 int ETH_P_TEB ;
 int PACKET_RCVD ;
 int PACKET_REJECT ;
 int TUNNEL_ERSPAN_OPT ;
 int TUNNEL_KEY ;
 scalar_t__ __iptunnel_pull_header (struct sk_buff*,int,int ,int,int) ;
 struct net* dev_net (TYPE_4__*) ;
 int erspan_hdr_len (int) ;
 int erspan_net_id ;
 int htons (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 struct metadata_dst* ip_tun_rx_dst (struct sk_buff*,int,int ,int) ;
 struct erspan_metadata* ip_tunnel_info_opts (struct ip_tunnel_info*) ;
 struct ip_tunnel* ip_tunnel_lookup (struct ip_tunnel_net*,int ,int,int ,int ,int ) ;
 int ip_tunnel_rcv (struct ip_tunnel*,struct sk_buff*,struct tnl_ptk_info*,struct metadata_dst*,int ) ;
 int key32_to_tunnel_id (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int log_ecn_error ;
 int memcpy (struct erspan_md2*,struct erspan_metadata*,int ) ;
 struct ip_tunnel_net* net_generic (struct net*,int ) ;
 int pskb_may_pull (struct sk_buff*,int) ;
 unsigned char* skb_network_header (struct sk_buff*) ;
 int skb_network_header_len (struct sk_buff*) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int erspan_rcv(struct sk_buff *skb, struct tnl_ptk_info *tpi,
        int gre_hdr_len)
{
 struct net *net = dev_net(skb->dev);
 struct metadata_dst *tun_dst = ((void*)0);
 struct erspan_base_hdr *ershdr;
 struct ip_tunnel_net *itn;
 struct ip_tunnel *tunnel;
 const struct iphdr *iph;
 struct erspan_md2 *md2;
 int ver;
 int len;

 itn = net_generic(net, erspan_net_id);

 iph = ip_hdr(skb);
 ershdr = (struct erspan_base_hdr *)(skb->data + gre_hdr_len);
 ver = ershdr->ver;

 tunnel = ip_tunnel_lookup(itn, skb->dev->ifindex,
      tpi->flags | TUNNEL_KEY,
      iph->saddr, iph->daddr, tpi->key);

 if (tunnel) {
  len = gre_hdr_len + erspan_hdr_len(ver);
  if (unlikely(!pskb_may_pull(skb, len)))
   return PACKET_REJECT;

  if (__iptunnel_pull_header(skb,
        len,
        htons(ETH_P_TEB),
        0, 0) < 0)
   goto drop;

  if (tunnel->collect_md) {
   struct erspan_metadata *pkt_md, *md;
   struct ip_tunnel_info *info;
   unsigned char *gh;
   __be64 tun_id;
   __be16 flags;

   tpi->flags |= TUNNEL_KEY;
   flags = tpi->flags;
   tun_id = key32_to_tunnel_id(tpi->key);

   tun_dst = ip_tun_rx_dst(skb, flags,
      tun_id, sizeof(*md));
   if (!tun_dst)
    return PACKET_REJECT;





   gh = skb_network_header(skb) +
        skb_network_header_len(skb);
   pkt_md = (struct erspan_metadata *)(gh + gre_hdr_len +
           sizeof(*ershdr));
   md = ip_tunnel_info_opts(&tun_dst->u.tun_info);
   md->version = ver;
   md2 = &md->u.md2;
   memcpy(md2, pkt_md, ver == 1 ? ERSPAN_V1_MDSIZE :
             ERSPAN_V2_MDSIZE);

   info = &tun_dst->u.tun_info;
   info->key.tun_flags |= TUNNEL_ERSPAN_OPT;
   info->options_len = sizeof(*md);
  }

  skb_reset_mac_header(skb);
  ip_tunnel_rcv(tunnel, skb, tpi, tun_dst, log_ecn_error);
  return PACKET_RCVD;
 }
 return PACKET_REJECT;

drop:
 kfree_skb(skb);
 return PACKET_RCVD;
}

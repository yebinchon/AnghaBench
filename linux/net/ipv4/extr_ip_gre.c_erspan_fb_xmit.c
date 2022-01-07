
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct sk_buff {int len; scalar_t__ protocol; } ;
struct TYPE_7__ {int tx_dropped; } ;
struct net_device {int mtu; int hard_header_len; TYPE_2__ stats; int needed_headroom; } ;
struct ip_tunnel_key {int tun_flags; int tun_id; } ;
struct ip_tunnel_info {int mode; int options_len; struct ip_tunnel_key key; } ;
struct ip_tunnel {int o_seqno; } ;
struct TYPE_10__ {int dir; } ;
struct TYPE_6__ {TYPE_5__ md2; int index; } ;
struct erspan_metadata {int version; TYPE_1__ u; } ;
typedef scalar_t__ __be16 ;
struct TYPE_9__ {int tot_len; } ;
struct TYPE_8__ {int payload_len; } ;


 scalar_t__ AF_INET ;
 int ETH_P_ERSPAN ;
 int ETH_P_ERSPAN2 ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IPPROTO_GRE ;
 int IP_TUNNEL_INFO_TX ;
 int TUNNEL_ERSPAN_OPT ;
 int TUNNEL_SEQ ;
 int erspan_build_header (struct sk_buff*,int ,int ,int,int) ;
 int erspan_build_header_v2 (struct sk_buff*,int ,int ,int ,int,int) ;
 int erspan_hdr_len (int) ;
 int get_hwid (TYPE_5__*) ;
 int gre_build_header (struct sk_buff*,int,int ,scalar_t__,int ,int ) ;
 scalar_t__ gre_handle_offloads (struct sk_buff*,int) ;
 int htonl (int ) ;
 scalar_t__ htons (int ) ;
 TYPE_4__* ip_hdr (struct sk_buff*) ;
 int ip_md_tunnel_xmit (struct sk_buff*,struct net_device*,int ,int) ;
 scalar_t__ ip_tunnel_info_af (struct ip_tunnel_info*) ;
 struct erspan_metadata* ip_tunnel_info_opts (struct ip_tunnel_info*) ;
 TYPE_3__* ipv6_hdr (struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 struct ip_tunnel* netdev_priv (struct net_device*) ;
 int ntohl (int ) ;
 int ntohs (int ) ;
 int pskb_trim (struct sk_buff*,int) ;
 scalar_t__ skb_cow_head (struct sk_buff*,int ) ;
 int skb_mac_header (struct sk_buff*) ;
 int skb_network_header (struct sk_buff*) ;
 int skb_transport_header (struct sk_buff*) ;
 struct ip_tunnel_info* skb_tunnel_info (struct sk_buff*) ;
 int tunnel_id_to_key32 (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void erspan_fb_xmit(struct sk_buff *skb, struct net_device *dev)
{
 struct ip_tunnel *tunnel = netdev_priv(dev);
 struct ip_tunnel_info *tun_info;
 const struct ip_tunnel_key *key;
 struct erspan_metadata *md;
 bool truncate = 0;
 __be16 proto;
 int tunnel_hlen;
 int version;
 int nhoff;
 int thoff;

 tun_info = skb_tunnel_info(skb);
 if (unlikely(!tun_info || !(tun_info->mode & IP_TUNNEL_INFO_TX) ||
       ip_tunnel_info_af(tun_info) != AF_INET))
  goto err_free_skb;

 key = &tun_info->key;
 if (!(tun_info->key.tun_flags & TUNNEL_ERSPAN_OPT))
  goto err_free_skb;
 if (tun_info->options_len < sizeof(*md))
  goto err_free_skb;
 md = ip_tunnel_info_opts(tun_info);


 version = md->version;
 tunnel_hlen = 8 + erspan_hdr_len(version);

 if (skb_cow_head(skb, dev->needed_headroom))
  goto err_free_skb;

 if (gre_handle_offloads(skb, 0))
  goto err_free_skb;

 if (skb->len > dev->mtu + dev->hard_header_len) {
  pskb_trim(skb, dev->mtu + dev->hard_header_len);
  truncate = 1;
 }

 nhoff = skb_network_header(skb) - skb_mac_header(skb);
 if (skb->protocol == htons(ETH_P_IP) &&
     (ntohs(ip_hdr(skb)->tot_len) > skb->len - nhoff))
  truncate = 1;

 thoff = skb_transport_header(skb) - skb_mac_header(skb);
 if (skb->protocol == htons(ETH_P_IPV6) &&
     (ntohs(ipv6_hdr(skb)->payload_len) > skb->len - thoff))
  truncate = 1;

 if (version == 1) {
  erspan_build_header(skb, ntohl(tunnel_id_to_key32(key->tun_id)),
        ntohl(md->u.index), truncate, 1);
  proto = htons(ETH_P_ERSPAN);
 } else if (version == 2) {
  erspan_build_header_v2(skb,
           ntohl(tunnel_id_to_key32(key->tun_id)),
           md->u.md2.dir,
           get_hwid(&md->u.md2),
           truncate, 1);
  proto = htons(ETH_P_ERSPAN2);
 } else {
  goto err_free_skb;
 }

 gre_build_header(skb, 8, TUNNEL_SEQ,
    proto, 0, htonl(tunnel->o_seqno++));

 ip_md_tunnel_xmit(skb, dev, IPPROTO_GRE, tunnel_hlen);

 return;

err_free_skb:
 kfree_skb(skb);
 dev->stats.tx_dropped++;
}

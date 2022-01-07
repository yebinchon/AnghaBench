
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct sk_buff {scalar_t__ ip_summed; int ignore_df; int sk; int len; int network_header; int transport_header; } ;
struct TYPE_5__ {struct net_device* dev; } ;
struct rtable {TYPE_1__ dst; } ;
struct netns_ipvs {struct net* net; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct iphdr {int version; int ihl; void* ttl; int saddr; int daddr; void* tos; void* protocol; int frag_off; } ;
struct ip_vs_protocol {int dummy; } ;
struct ip_vs_iphdr {int dummy; } ;
struct TYPE_6__ {int ip; } ;
struct ip_vs_conn {TYPE_2__ daddr; int af; TYPE_3__* dest; struct netns_ipvs* ipvs; } ;
struct guehdr {int dummy; } ;
typedef void* __u8 ;
typedef int __be32 ;
typedef int __be16 ;
struct TYPE_8__ {int opt; } ;
struct TYPE_7__ {int tun_type; int tun_flags; } ;


 int AF_INET ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int EnterFunction (int) ;
 scalar_t__ GUE_LEN_PRIV ;
 scalar_t__ GUE_PLEN_REMCSUM ;
 TYPE_4__* IPCB (struct sk_buff*) ;
 int IP_VS_CONN_F_TUNNEL_TYPE_GRE ;
 int IP_VS_CONN_F_TUNNEL_TYPE_GUE ;
 int IP_VS_RT_MODE_CONNECT ;
 int IP_VS_RT_MODE_LOCAL ;
 int IP_VS_RT_MODE_NON_LOCAL ;
 int IP_VS_RT_MODE_TUNNEL ;
 int IP_VS_TUNNEL_ENCAP_FLAG_CSUM ;
 int IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int LL_RESERVED_SPACE (struct net_device*) ;
 int LeaveFunction (int) ;
 int NFPROTO_IPV4 ;
 int NF_ACCEPT ;
 int NF_DROP ;
 int NF_STOLEN ;
 int SKB_GSO_GRE ;
 int SKB_GSO_GRE_CSUM ;
 int SKB_GSO_TUNNEL_REMCSUM ;
 int SKB_GSO_UDP_TUNNEL ;
 int SKB_GSO_UDP_TUNNEL_CSUM ;
 int TUNNEL_CSUM ;
 int __ip_vs_get_out_rt (struct netns_ipvs*,int ,struct sk_buff*,TYPE_3__*,int ,int,int *,struct ip_vs_iphdr*) ;
 int __tun_gso_type_mask (int ,int ) ;
 size_t gre_calc_hlen (int ) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ip_local_out (struct net*,int ,struct sk_buff*) ;
 int ip_select_ident (struct net*,struct sk_buff*,int *) ;
 struct sk_buff* ip_vs_prepare_tunneled_skb (struct sk_buff*,int ,unsigned int,void**,int *,void**,void**,int *) ;
 int ip_vs_send_or_cont (int ,struct sk_buff*,struct ip_vs_conn*,int) ;
 int ip_vs_tunnel_xmit_prepare (struct sk_buff*,struct ip_vs_conn*) ;
 scalar_t__ iptunnel_handle_offloads (struct sk_buff*,int) ;
 int ipvs_gre_encap (struct net*,struct sk_buff*,struct ip_vs_conn*,void**) ;
 scalar_t__ ipvs_gue_encap (struct net*,struct sk_buff*,struct ip_vs_conn*,void**) ;
 int kfree_skb (struct sk_buff*) ;
 int memset (int *,int ,int) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_network_header (struct sk_buff*) ;
 struct rtable* skb_rtable (struct sk_buff*) ;
 int skb_set_inner_ipproto (struct sk_buff*,void*) ;
 scalar_t__ sysctl_pmtu_disc (struct netns_ipvs*) ;
 int udp_set_csum (int,struct sk_buff*,int ,int ,int ) ;

int
ip_vs_tunnel_xmit(struct sk_buff *skb, struct ip_vs_conn *cp,
    struct ip_vs_protocol *pp, struct ip_vs_iphdr *ipvsh)
{
 struct netns_ipvs *ipvs = cp->ipvs;
 struct net *net = ipvs->net;
 struct rtable *rt;
 __be32 saddr;
 struct net_device *tdev;
 __u8 next_protocol = 0;
 __u8 dsfield = 0;
 __u8 ttl = 0;
 __be16 df = 0;
 __be16 *dfp = ((void*)0);
 struct iphdr *iph;
 unsigned int max_headroom;
 int ret, local;
 int tun_type, gso_type;
 int tun_flags;

 EnterFunction(10);

 local = __ip_vs_get_out_rt(ipvs, cp->af, skb, cp->dest, cp->daddr.ip,
       IP_VS_RT_MODE_LOCAL |
       IP_VS_RT_MODE_NON_LOCAL |
       IP_VS_RT_MODE_CONNECT |
       IP_VS_RT_MODE_TUNNEL, &saddr, ipvsh);
 if (local < 0)
  goto tx_error;
 if (local)
  return ip_vs_send_or_cont(NFPROTO_IPV4, skb, cp, 1);

 rt = skb_rtable(skb);
 tdev = rt->dst.dev;




 max_headroom = LL_RESERVED_SPACE(tdev) + sizeof(struct iphdr);

 tun_type = cp->dest->tun_type;
 tun_flags = cp->dest->tun_flags;

 if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
  size_t gue_hdrlen, gue_optlen = 0;

  if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM) &&
      skb->ip_summed == CHECKSUM_PARTIAL) {
   gue_optlen += GUE_PLEN_REMCSUM + GUE_LEN_PRIV;
  }
  gue_hdrlen = sizeof(struct guehdr) + gue_optlen;

  max_headroom += sizeof(struct udphdr) + gue_hdrlen;
 } else if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE) {
  size_t gre_hdrlen;
  __be16 tflags = 0;

  if (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM)
   tflags |= TUNNEL_CSUM;
  gre_hdrlen = gre_calc_hlen(tflags);

  max_headroom += gre_hdrlen;
 }


 dfp = sysctl_pmtu_disc(ipvs) ? &df : ((void*)0);
 skb = ip_vs_prepare_tunneled_skb(skb, cp->af, max_headroom,
      &next_protocol, ((void*)0), &dsfield,
      &ttl, dfp);
 if (IS_ERR(skb))
  goto tx_error;

 gso_type = __tun_gso_type_mask(AF_INET, cp->af);
 if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
  if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM) ||
      (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM))
   gso_type |= SKB_GSO_UDP_TUNNEL_CSUM;
  else
   gso_type |= SKB_GSO_UDP_TUNNEL;
  if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM) &&
      skb->ip_summed == CHECKSUM_PARTIAL) {
   gso_type |= SKB_GSO_TUNNEL_REMCSUM;
  }
 } else if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE) {
  if (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM)
   gso_type |= SKB_GSO_GRE_CSUM;
  else
   gso_type |= SKB_GSO_GRE;
 }

 if (iptunnel_handle_offloads(skb, gso_type))
  goto tx_error;

 skb->transport_header = skb->network_header;

 skb_set_inner_ipproto(skb, next_protocol);

 if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GUE) {
  bool check = 0;

  if (ipvs_gue_encap(net, skb, cp, &next_protocol))
   goto tx_error;

  if ((tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_CSUM) ||
      (tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM))
   check = 1;

  udp_set_csum(!check, skb, saddr, cp->daddr.ip, skb->len);
 } else if (tun_type == IP_VS_CONN_F_TUNNEL_TYPE_GRE)
  ipvs_gre_encap(net, skb, cp, &next_protocol);

 skb_push(skb, sizeof(struct iphdr));
 skb_reset_network_header(skb);
 memset(&(IPCB(skb)->opt), 0, sizeof(IPCB(skb)->opt));




 iph = ip_hdr(skb);
 iph->version = 4;
 iph->ihl = sizeof(struct iphdr)>>2;
 iph->frag_off = df;
 iph->protocol = next_protocol;
 iph->tos = dsfield;
 iph->daddr = cp->daddr.ip;
 iph->saddr = saddr;
 iph->ttl = ttl;
 ip_select_ident(net, skb, ((void*)0));


 skb->ignore_df = 1;

 ret = ip_vs_tunnel_xmit_prepare(skb, cp);
 if (ret == NF_ACCEPT)
  ip_local_out(net, skb->sk, skb);
 else if (ret == NF_DROP)
  kfree_skb(skb);

 LeaveFunction(10);

 return NF_STOLEN;

  tx_error:
 if (!IS_ERR(skb))
  kfree_skb(skb);
 LeaveFunction(10);
 return NF_STOLEN;
}

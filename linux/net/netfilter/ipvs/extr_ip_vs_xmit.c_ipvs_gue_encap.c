
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct udphdr {scalar_t__ check; void* len; void* source; void* dest; } ;
struct sk_buff {scalar_t__ ip_summed; size_t csum_offset; size_t len; scalar_t__ encapsulation; scalar_t__ data; } ;
struct net {int dummy; } ;
struct ip_vs_conn {TYPE_1__* dest; } ;
struct guehdr {size_t hlen; int flags; int proto_ctype; scalar_t__ version; scalar_t__ control; } ;
typedef int __u8 ;
typedef int __be32 ;
typedef void* __be16 ;
struct TYPE_2__ {int tun_flags; void* tun_port; } ;


 scalar_t__ CHECKSUM_NONE ;
 scalar_t__ CHECKSUM_PARTIAL ;
 int EINVAL ;
 int GUE_FLAG_PRIV ;
 scalar_t__ GUE_LEN_PRIV ;
 int GUE_PFLAG_REMCSUM ;
 scalar_t__ GUE_PLEN_REMCSUM ;
 int IPPROTO_UDP ;
 int IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM ;
 void* htons (size_t) ;
 size_t skb_checksum_start_offset (struct sk_buff*) ;
 int skb_is_gso (struct sk_buff*) ;
 int skb_push (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;
 void* udp_flow_src_port (struct net*,struct sk_buff*,int ,int ,int) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

__attribute__((used)) static int
ipvs_gue_encap(struct net *net, struct sk_buff *skb,
        struct ip_vs_conn *cp, __u8 *next_protocol)
{
 __be16 dport;
 __be16 sport = udp_flow_src_port(net, skb, 0, 0, 0);
 struct udphdr *udph;
 struct guehdr *gueh;
 size_t hdrlen, optlen = 0;
 void *data;
 bool need_priv = 0;

 if ((cp->dest->tun_flags & IP_VS_TUNNEL_ENCAP_FLAG_REMCSUM) &&
     skb->ip_summed == CHECKSUM_PARTIAL) {
  optlen += GUE_PLEN_REMCSUM + GUE_LEN_PRIV;
  need_priv = 1;
 }

 hdrlen = sizeof(struct guehdr) + optlen;

 skb_push(skb, hdrlen);

 gueh = (struct guehdr *)skb->data;

 gueh->control = 0;
 gueh->version = 0;
 gueh->hlen = optlen >> 2;
 gueh->flags = 0;
 gueh->proto_ctype = *next_protocol;

 data = &gueh[1];

 if (need_priv) {
  __be32 *flags = data;
  u16 csum_start = skb_checksum_start_offset(skb);
  __be16 *pd;

  gueh->flags |= GUE_FLAG_PRIV;
  *flags = 0;
  data += GUE_LEN_PRIV;

  if (csum_start < hdrlen)
   return -EINVAL;

  csum_start -= hdrlen;
  pd = data;
  pd[0] = htons(csum_start);
  pd[1] = htons(csum_start + skb->csum_offset);

  if (!skb_is_gso(skb)) {
   skb->ip_summed = CHECKSUM_NONE;
   skb->encapsulation = 0;
  }

  *flags |= GUE_PFLAG_REMCSUM;
  data += GUE_PLEN_REMCSUM;
 }

 skb_push(skb, sizeof(struct udphdr));
 skb_reset_transport_header(skb);

 udph = udp_hdr(skb);

 dport = cp->dest->tun_port;
 udph->dest = dport;
 udph->source = sport;
 udph->len = htons(skb->len);
 udph->check = 0;

 *next_protocol = IPPROTO_UDP;

 return 0;
}

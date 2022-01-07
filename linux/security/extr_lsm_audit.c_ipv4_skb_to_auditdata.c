
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct udphdr {int dest; int source; } ;
struct tcphdr {int dest; int source; } ;
struct sk_buff {int dummy; } ;
struct sctphdr {int dest; int source; } ;
struct iphdr {int protocol; int frag_off; int daddr; int saddr; } ;
struct dccp_hdr {int dccph_dport; int dccph_sport; } ;
struct TYPE_6__ {TYPE_2__* net; } ;
struct common_audit_data {TYPE_3__ u; } ;
struct TYPE_4__ {int daddr; int saddr; } ;
struct TYPE_5__ {int dport; int sport; TYPE_1__ v4info; } ;


 int EINVAL ;




 int IP_OFFSET ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 struct iphdr* ip_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 struct sctphdr* sctp_hdr (struct sk_buff*) ;
 struct tcphdr* tcp_hdr (struct sk_buff*) ;
 struct udphdr* udp_hdr (struct sk_buff*) ;

int ipv4_skb_to_auditdata(struct sk_buff *skb,
  struct common_audit_data *ad, u8 *proto)
{
 int ret = 0;
 struct iphdr *ih;

 ih = ip_hdr(skb);
 if (ih == ((void*)0))
  return -EINVAL;

 ad->u.net->v4info.saddr = ih->saddr;
 ad->u.net->v4info.daddr = ih->daddr;

 if (proto)
  *proto = ih->protocol;

 if (ntohs(ih->frag_off) & IP_OFFSET)
  return 0;

 switch (ih->protocol) {
 case 129: {
  struct tcphdr *th = tcp_hdr(skb);
  if (th == ((void*)0))
   break;

  ad->u.net->sport = th->source;
  ad->u.net->dport = th->dest;
  break;
 }
 case 128: {
  struct udphdr *uh = udp_hdr(skb);
  if (uh == ((void*)0))
   break;

  ad->u.net->sport = uh->source;
  ad->u.net->dport = uh->dest;
  break;
 }
 case 131: {
  struct dccp_hdr *dh = dccp_hdr(skb);
  if (dh == ((void*)0))
   break;

  ad->u.net->sport = dh->dccph_sport;
  ad->u.net->dport = dh->dccph_dport;
  break;
 }
 case 130: {
  struct sctphdr *sh = sctp_hdr(skb);
  if (sh == ((void*)0))
   break;
  ad->u.net->sport = sh->source;
  ad->u.net->dport = sh->dest;
  break;
 }
 default:
  ret = -EINVAL;
 }
 return ret;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int8_t ;
struct tcphdr {int doff; int ack; int rst; scalar_t__ check; scalar_t__ urg_ptr; scalar_t__ window; scalar_t__ seq; scalar_t__ fin; scalar_t__ syn; scalar_t__ ack_seq; int source; int dest; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int daddr; int saddr; } ;


 int IPPROTO_TCP ;
 scalar_t__ csum_ipv6_magic (int *,int *,int,int ,int ) ;
 int csum_partial (struct tcphdr*,int,int ) ;
 scalar_t__ htonl (scalar_t__) ;
 TYPE_1__* ipv6_hdr (struct sk_buff*) ;
 scalar_t__ ntohl (scalar_t__) ;
 struct tcphdr* skb_put (struct sk_buff*,int) ;
 int skb_reset_transport_header (struct sk_buff*) ;

void nf_reject_ip6_tcphdr_put(struct sk_buff *nskb,
         const struct sk_buff *oldskb,
         const struct tcphdr *oth, unsigned int otcplen)
{
 struct tcphdr *tcph;
 int needs_ack;

 skb_reset_transport_header(nskb);
 tcph = skb_put(nskb, sizeof(struct tcphdr));

 tcph->doff = sizeof(struct tcphdr)/4;
 tcph->source = oth->dest;
 tcph->dest = oth->source;

 if (oth->ack) {
  needs_ack = 0;
  tcph->seq = oth->ack_seq;
  tcph->ack_seq = 0;
 } else {
  needs_ack = 1;
  tcph->ack_seq = htonl(ntohl(oth->seq) + oth->syn + oth->fin +
          otcplen - (oth->doff<<2));
  tcph->seq = 0;
 }


 ((u_int8_t *)tcph)[13] = 0;
 tcph->rst = 1;
 tcph->ack = needs_ack;
 tcph->window = 0;
 tcph->urg_ptr = 0;
 tcph->check = 0;


 tcph->check = csum_ipv6_magic(&ipv6_hdr(nskb)->saddr,
          &ipv6_hdr(nskb)->daddr,
          sizeof(struct tcphdr), IPPROTO_TCP,
          csum_partial(tcph,
         sizeof(struct tcphdr), 0));
}

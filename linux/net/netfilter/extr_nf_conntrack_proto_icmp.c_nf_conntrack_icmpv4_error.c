
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nf_inet_addr {int ip; } ;
struct sk_buff {int dummy; } ;
struct nf_hook_state {scalar_t__ hook; TYPE_2__* net; } ;
struct nf_conn {int dummy; } ;
struct icmphdr {scalar_t__ type; } ;
typedef int outer_daddr ;
typedef int _ih ;
struct TYPE_6__ {int daddr; } ;
struct TYPE_4__ {scalar_t__ sysctl_checksum; } ;
struct TYPE_5__ {TYPE_1__ ct; } ;


 scalar_t__ ICMP_DEST_UNREACH ;
 scalar_t__ ICMP_PARAMETERPROB ;
 scalar_t__ ICMP_REDIRECT ;
 scalar_t__ ICMP_SOURCE_QUENCH ;
 scalar_t__ ICMP_TIME_EXCEEDED ;
 int IPPROTO_ICMP ;
 int NF_ACCEPT ;
 scalar_t__ NF_INET_PRE_ROUTING ;
 scalar_t__ NR_ICMP_TYPES ;
 int icmp_error_log (struct sk_buff*,struct nf_hook_state const*,char*) ;
 TYPE_3__* ip_hdr (struct sk_buff*) ;
 int memset (union nf_inet_addr*,int ,int) ;
 int nf_conntrack_inet_error (struct nf_conn*,struct sk_buff*,unsigned int,struct nf_hook_state const*,int ,union nf_inet_addr*) ;
 scalar_t__ nf_ip_checksum (struct sk_buff*,scalar_t__,unsigned int,int ) ;
 struct icmphdr* skb_header_pointer (struct sk_buff*,unsigned int,int,struct icmphdr*) ;

int nf_conntrack_icmpv4_error(struct nf_conn *tmpl,
         struct sk_buff *skb, unsigned int dataoff,
         const struct nf_hook_state *state)
{
 union nf_inet_addr outer_daddr;
 const struct icmphdr *icmph;
 struct icmphdr _ih;


 icmph = skb_header_pointer(skb, dataoff, sizeof(_ih), &_ih);
 if (icmph == ((void*)0)) {
  icmp_error_log(skb, state, "short packet");
  return -NF_ACCEPT;
 }


 if (state->net->ct.sysctl_checksum &&
     state->hook == NF_INET_PRE_ROUTING &&
     nf_ip_checksum(skb, state->hook, dataoff, IPPROTO_ICMP)) {
  icmp_error_log(skb, state, "bad hw icmp checksum");
  return -NF_ACCEPT;
 }







 if (icmph->type > NR_ICMP_TYPES) {
  icmp_error_log(skb, state, "invalid icmp type");
  return -NF_ACCEPT;
 }


 if (icmph->type != ICMP_DEST_UNREACH &&
     icmph->type != ICMP_SOURCE_QUENCH &&
     icmph->type != ICMP_TIME_EXCEEDED &&
     icmph->type != ICMP_PARAMETERPROB &&
     icmph->type != ICMP_REDIRECT)
  return NF_ACCEPT;

 memset(&outer_daddr, 0, sizeof(outer_daddr));
 outer_daddr.ip = ip_hdr(skb)->daddr;

 dataoff += sizeof(*icmph);
 return nf_conntrack_inet_error(tmpl, skb, dataoff, state,
           IPPROTO_ICMP, &outer_daddr);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int seq; } ;
struct sk_buff {int dummy; } ;
struct nf_conn {int dummy; } ;
typedef int s32 ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ IPPROTO_TCP ;
 scalar_t__ ip_hdrlen (struct sk_buff*) ;
 scalar_t__ nf_ct_protonum (struct nf_conn*) ;
 int nf_ct_seqadj_set (struct nf_conn*,int,int ,int ) ;
 scalar_t__ skb_network_header (struct sk_buff*) ;

void nf_ct_tcp_seqadj_set(struct sk_buff *skb,
     struct nf_conn *ct, enum ip_conntrack_info ctinfo,
     s32 off)
{
 const struct tcphdr *th;

 if (nf_ct_protonum(ct) != IPPROTO_TCP)
  return;

 th = (struct tcphdr *)(skb_network_header(skb) + ip_hdrlen(skb));
 nf_ct_seqadj_set(ct, ctinfo, th->seq, off);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; } ;
struct sk_buff {unsigned char* data; } ;
struct nf_conn_seqadj {int * seq; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 unsigned int CTINFO2DIR (int) ;
 unsigned char TCPOLEN_SACK_PERBLOCK ;


 unsigned char TCPOPT_SACK ;
 int nf_ct_sack_block_adjust (struct sk_buff*,struct tcphdr*,unsigned int,unsigned int,int *) ;
 struct nf_conn_seqadj* nfct_seqadj (struct nf_conn*) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static unsigned int nf_ct_sack_adjust(struct sk_buff *skb,
          unsigned int protoff,
          struct nf_conn *ct,
          enum ip_conntrack_info ctinfo)
{
 struct tcphdr *tcph = (void *)skb->data + protoff;
 struct nf_conn_seqadj *seqadj = nfct_seqadj(ct);
 unsigned int dir, optoff, optend;

 optoff = protoff + sizeof(struct tcphdr);
 optend = protoff + tcph->doff * 4;

 if (skb_ensure_writable(skb, optend))
  return 0;

 tcph = (void *)skb->data + protoff;
 dir = CTINFO2DIR(ctinfo);

 while (optoff < optend) {

  unsigned char *op = skb->data + optoff;

  switch (op[0]) {
  case 129:
   return 1;
  case 128:
   optoff++;
   continue;
  default:

   if (optoff + 1 == optend ||
       optoff + op[1] > optend ||
       op[1] < 2)
    return 0;
   if (op[0] == TCPOPT_SACK &&
       op[1] >= 2+TCPOLEN_SACK_PERBLOCK &&
       ((op[1] - 2) % TCPOLEN_SACK_PERBLOCK) == 0)
    nf_ct_sack_block_adjust(skb, tcph, optoff + 2,
       optoff+op[1],
       &seqadj->seq[!dir]);
   optoff += op[1];
  }
 }
 return 1;
}

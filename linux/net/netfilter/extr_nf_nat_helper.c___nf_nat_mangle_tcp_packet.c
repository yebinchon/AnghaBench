
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int doff; int seq; int check; } ;
struct sk_buff {unsigned int len; scalar_t__ data; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IPPROTO_TCP ;
 int enlarge_skb (struct sk_buff*,unsigned int) ;
 int mangle_contents (struct sk_buff*,unsigned int,unsigned int,unsigned int,char const*,unsigned int) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int nf_ct_seqadj_set (struct nf_conn*,int,int ,int) ;
 int nf_nat_csum_recalc (struct sk_buff*,int ,int ,struct tcphdr*,int *,int,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;
 unsigned int skb_tailroom (struct sk_buff*) ;

bool __nf_nat_mangle_tcp_packet(struct sk_buff *skb,
    struct nf_conn *ct,
    enum ip_conntrack_info ctinfo,
    unsigned int protoff,
    unsigned int match_offset,
    unsigned int match_len,
    const char *rep_buffer,
    unsigned int rep_len, bool adjust)
{
 struct tcphdr *tcph;
 int oldlen, datalen;

 if (skb_ensure_writable(skb, skb->len))
  return 0;

 if (rep_len > match_len &&
     rep_len - match_len > skb_tailroom(skb) &&
     !enlarge_skb(skb, rep_len - match_len))
  return 0;

 tcph = (void *)skb->data + protoff;

 oldlen = skb->len - protoff;
 mangle_contents(skb, protoff + tcph->doff*4,
   match_offset, match_len, rep_buffer, rep_len);

 datalen = skb->len - protoff;

 nf_nat_csum_recalc(skb, nf_ct_l3num(ct), IPPROTO_TCP,
      tcph, &tcph->check, datalen, oldlen);

 if (adjust && rep_len != match_len)
  nf_ct_seqadj_set(ct, ctinfo, tcph->seq,
     (int)rep_len - (int)match_len);

 return 1;
}

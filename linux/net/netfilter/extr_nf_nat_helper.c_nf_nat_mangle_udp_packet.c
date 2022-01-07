
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int check; int len; } ;
struct sk_buff {unsigned int len; scalar_t__ ip_summed; scalar_t__ data; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int IPPROTO_UDP ;
 int enlarge_skb (struct sk_buff*,unsigned int) ;
 int htons (int) ;
 int mangle_contents (struct sk_buff*,unsigned int,unsigned int,unsigned int,char const*,unsigned int) ;
 int nf_ct_l3num (struct nf_conn*) ;
 int nf_nat_csum_recalc (struct sk_buff*,int ,int ,struct udphdr*,int *,int,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;
 unsigned int skb_tailroom (struct sk_buff*) ;

bool
nf_nat_mangle_udp_packet(struct sk_buff *skb,
    struct nf_conn *ct,
    enum ip_conntrack_info ctinfo,
    unsigned int protoff,
    unsigned int match_offset,
    unsigned int match_len,
    const char *rep_buffer,
    unsigned int rep_len)
{
 struct udphdr *udph;
 int datalen, oldlen;

 if (skb_ensure_writable(skb, skb->len))
  return 0;

 if (rep_len > match_len &&
     rep_len - match_len > skb_tailroom(skb) &&
     !enlarge_skb(skb, rep_len - match_len))
  return 0;

 udph = (void *)skb->data + protoff;

 oldlen = skb->len - protoff;
 mangle_contents(skb, protoff + sizeof(*udph),
   match_offset, match_len, rep_buffer, rep_len);


 datalen = skb->len - protoff;
 udph->len = htons(datalen);


 if (!udph->check && skb->ip_summed != CHECKSUM_PARTIAL)
  return 1;

 nf_nat_csum_recalc(skb, nf_ct_l3num(ct), IPPROTO_UDP,
      udph, &udph->check, datalen, oldlen);

 return 1;
}

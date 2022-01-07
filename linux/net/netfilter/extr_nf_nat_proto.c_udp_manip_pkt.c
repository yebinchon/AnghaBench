
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {scalar_t__ check; } ;
struct sk_buff {scalar_t__ ip_summed; scalar_t__ data; } ;
struct nf_conntrack_tuple {int dummy; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 scalar_t__ CHECKSUM_PARTIAL ;
 int __udp_manip_pkt (struct sk_buff*,unsigned int,struct udphdr*,struct nf_conntrack_tuple const*,int,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool udp_manip_pkt(struct sk_buff *skb,
     unsigned int iphdroff, unsigned int hdroff,
     const struct nf_conntrack_tuple *tuple,
     enum nf_nat_manip_type maniptype)
{
 struct udphdr *hdr;
 bool do_csum;

 if (skb_ensure_writable(skb, hdroff + sizeof(*hdr)))
  return 0;

 hdr = (struct udphdr *)(skb->data + hdroff);
 do_csum = hdr->check || skb->ip_summed == CHECKSUM_PARTIAL;

 __udp_manip_pkt(skb, iphdroff, hdr, tuple, maniptype, do_csum);
 return 1;
}

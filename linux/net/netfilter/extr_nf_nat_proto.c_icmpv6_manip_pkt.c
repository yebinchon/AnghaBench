
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {TYPE_1__ icmp; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct nf_conntrack_tuple {TYPE_3__ src; } ;
struct icmp6hdr {scalar_t__ icmp6_type; int icmp6_identifier; int icmp6_cksum; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 scalar_t__ ICMPV6_ECHO_REPLY ;
 scalar_t__ ICMPV6_ECHO_REQUEST ;
 int inet_proto_csum_replace2 (int *,struct sk_buff*,int ,int ,int) ;
 int nf_csum_update (struct sk_buff*,unsigned int,int *,struct nf_conntrack_tuple const*,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool
icmpv6_manip_pkt(struct sk_buff *skb,
   unsigned int iphdroff, unsigned int hdroff,
   const struct nf_conntrack_tuple *tuple,
   enum nf_nat_manip_type maniptype)
{
 struct icmp6hdr *hdr;

 if (skb_ensure_writable(skb, hdroff + sizeof(*hdr)))
  return 0;

 hdr = (struct icmp6hdr *)(skb->data + hdroff);
 nf_csum_update(skb, iphdroff, &hdr->icmp6_cksum, tuple, maniptype);
 if (hdr->icmp6_type == ICMPV6_ECHO_REQUEST ||
     hdr->icmp6_type == ICMPV6_ECHO_REPLY) {
  inet_proto_csum_replace2(&hdr->icmp6_cksum, skb,
      hdr->icmp6_identifier,
      tuple->src.u.icmp.id, 0);
  hdr->icmp6_identifier = tuple->src.u.icmp.id;
 }
 return 1;
}

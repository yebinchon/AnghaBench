
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_7__ {int ip; } ;
struct TYPE_8__ {TYPE_3__ u3; } ;
struct TYPE_5__ {int ip; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct nf_conntrack_tuple {TYPE_4__ dst; TYPE_2__ src; } ;
struct iphdr {int ihl; int daddr; int check; int saddr; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;


 int NF_NAT_MANIP_SRC ;
 int csum_replace4 (int *,int ,int ) ;
 int l4proto_manip_pkt (struct sk_buff*,unsigned int,unsigned int,struct nf_conntrack_tuple const*,int) ;
 scalar_t__ skb_ensure_writable (struct sk_buff*,unsigned int) ;

__attribute__((used)) static bool nf_nat_ipv4_manip_pkt(struct sk_buff *skb,
      unsigned int iphdroff,
      const struct nf_conntrack_tuple *target,
      enum nf_nat_manip_type maniptype)
{
 struct iphdr *iph;
 unsigned int hdroff;

 if (skb_ensure_writable(skb, iphdroff + sizeof(*iph)))
  return 0;

 iph = (void *)skb->data + iphdroff;
 hdroff = iphdroff + iph->ihl * 4;

 if (!l4proto_manip_pkt(skb, iphdroff, hdroff, target, maniptype))
  return 0;
 iph = (void *)skb->data + iphdroff;

 if (maniptype == NF_NAT_MANIP_SRC) {
  csum_replace4(&iph->check, iph->saddr, target->src.u3.ip);
  iph->saddr = target->src.u3.ip;
 } else {
  csum_replace4(&iph->check, iph->daddr, target->dst.u3.ip);
  iph->daddr = target->dst.u3.ip;
 }
 return 1;
}

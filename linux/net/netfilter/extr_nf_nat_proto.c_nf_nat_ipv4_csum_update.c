
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_5__ {int ip; } ;
struct TYPE_6__ {TYPE_1__ u3; } ;
struct TYPE_8__ {int ip; } ;
struct TYPE_7__ {TYPE_4__ u3; } ;
struct nf_conntrack_tuple {TYPE_2__ dst; TYPE_3__ src; } ;
struct iphdr {int daddr; int saddr; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __sum16 ;
typedef int __be32 ;


 int NF_NAT_MANIP_SRC ;
 int inet_proto_csum_replace4 (int *,struct sk_buff*,int ,int ,int) ;

__attribute__((used)) static void nf_nat_ipv4_csum_update(struct sk_buff *skb,
        unsigned int iphdroff, __sum16 *check,
        const struct nf_conntrack_tuple *t,
        enum nf_nat_manip_type maniptype)
{
 struct iphdr *iph = (struct iphdr *)(skb->data + iphdroff);
 __be32 oldip, newip;

 if (maniptype == NF_NAT_MANIP_SRC) {
  oldip = iph->saddr;
  newip = t->src.u3.ip;
 } else {
  oldip = iph->daddr;
  newip = t->dst.u3.ip;
 }
 inet_proto_csum_replace4(check, skb, oldip, newip, 1);
}

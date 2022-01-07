
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct TYPE_2__ {int l3num; } ;
struct nf_conntrack_tuple {TYPE_1__ src; } ;
typedef enum nf_nat_manip_type { ____Placeholder_nf_nat_manip_type } nf_nat_manip_type ;
typedef int __sum16 ;




 int nf_nat_ipv4_csum_update (struct sk_buff*,unsigned int,int *,struct nf_conntrack_tuple const*,int) ;
 int nf_nat_ipv6_csum_update (struct sk_buff*,unsigned int,int *,struct nf_conntrack_tuple const*,int) ;

__attribute__((used)) static void nf_csum_update(struct sk_buff *skb,
      unsigned int iphdroff, __sum16 *check,
      const struct nf_conntrack_tuple *t,
      enum nf_nat_manip_type maniptype)
{
 switch (t->src.l3num) {
 case 129:
  nf_nat_ipv4_csum_update(skb, iphdroff, check, t, maniptype);
  return;
 case 128:
  nf_nat_ipv6_csum_update(skb, iphdroff, check, t, maniptype);
  return;
 }
}

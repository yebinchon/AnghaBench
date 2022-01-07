
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_action_param {struct nf_nat_ipv4_multi_range_compat* targinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_nat_range2 {int max_proto; int min_proto; int flags; } ;
struct nf_nat_ipv4_multi_range_compat {TYPE_1__* range; } ;
struct TYPE_2__ {int max; int min; int flags; } ;


 unsigned int nf_nat_masquerade_ipv4 (struct sk_buff*,int ,struct nf_nat_range2*,int ) ;
 int xt_hooknum (struct xt_action_param const*) ;
 int xt_out (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
masquerade_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 struct nf_nat_range2 range;
 const struct nf_nat_ipv4_multi_range_compat *mr;

 mr = par->targinfo;
 range.flags = mr->range[0].flags;
 range.min_proto = mr->range[0].min;
 range.max_proto = mr->range[0].max;

 return nf_nat_masquerade_ipv4(skb, xt_hooknum(par), &range,
          xt_out(par));
}

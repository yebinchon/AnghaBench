
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {int targinfo; } ;
struct sk_buff {int dummy; } ;


 unsigned int nf_nat_redirect_ipv6 (struct sk_buff*,int ,int ) ;
 int xt_hooknum (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
redirect_tg6(struct sk_buff *skb, const struct xt_action_param *par)
{
 return nf_nat_redirect_ipv6(skb, par->targinfo, xt_hooknum(par));
}

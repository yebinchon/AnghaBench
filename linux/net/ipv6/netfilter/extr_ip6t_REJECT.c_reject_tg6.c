
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct ip6t_reject_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct net {int dummy; } ;
struct ip6t_reject_info {int with; } ;


 int ICMPV6_ADDR_UNREACH ;
 int ICMPV6_ADM_PROHIBITED ;
 int ICMPV6_NOROUTE ;
 int ICMPV6_NOT_NEIGHBOUR ;
 int ICMPV6_POLICY_FAIL ;
 int ICMPV6_PORT_UNREACH ;
 int ICMPV6_REJECT_ROUTE ;
 unsigned int NF_DROP ;
 int nf_send_reset6 (struct net*,struct sk_buff*,int ) ;
 int nf_send_unreach6 (struct net*,struct sk_buff*,int ,int ) ;
 int xt_hooknum (struct xt_action_param const*) ;
 struct net* xt_net (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
reject_tg6(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct ip6t_reject_info *reject = par->targinfo;
 struct net *net = xt_net(par);

 switch (reject->with) {
 case 132:
  nf_send_unreach6(net, skb, ICMPV6_NOROUTE, xt_hooknum(par));
  break;
 case 135:
  nf_send_unreach6(net, skb, ICMPV6_ADM_PROHIBITED,
     xt_hooknum(par));
  break;
 case 133:
  nf_send_unreach6(net, skb, ICMPV6_NOT_NEIGHBOUR,
     xt_hooknum(par));
  break;
 case 136:
  nf_send_unreach6(net, skb, ICMPV6_ADDR_UNREACH,
     xt_hooknum(par));
  break;
 case 130:
  nf_send_unreach6(net, skb, ICMPV6_PORT_UNREACH,
     xt_hooknum(par));
  break;
 case 134:

  break;
 case 128:
  nf_send_reset6(net, skb, xt_hooknum(par));
  break;
 case 131:
  nf_send_unreach6(net, skb, ICMPV6_POLICY_FAIL, xt_hooknum(par));
  break;
 case 129:
  nf_send_unreach6(net, skb, ICMPV6_REJECT_ROUTE,
     xt_hooknum(par));
  break;
 }

 return NF_DROP;
}

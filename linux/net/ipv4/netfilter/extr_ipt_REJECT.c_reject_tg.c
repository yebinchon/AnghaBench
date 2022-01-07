
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_action_param {struct ipt_reject_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct ipt_reject_info {int with; } ;


 int ICMP_HOST_ANO ;
 int ICMP_HOST_UNREACH ;
 int ICMP_NET_ANO ;
 int ICMP_NET_UNREACH ;
 int ICMP_PKT_FILTERED ;
 int ICMP_PORT_UNREACH ;
 int ICMP_PROT_UNREACH ;
 unsigned int NF_DROP ;
 int nf_send_reset (int ,struct sk_buff*,int) ;
 int nf_send_unreach (struct sk_buff*,int ,int) ;
 int xt_hooknum (struct xt_action_param const*) ;
 int xt_net (struct xt_action_param const*) ;

__attribute__((used)) static unsigned int
reject_tg(struct sk_buff *skb, const struct xt_action_param *par)
{
 const struct ipt_reject_info *reject = par->targinfo;
 int hook = xt_hooknum(par);

 switch (reject->with) {
 case 131:
  nf_send_unreach(skb, ICMP_NET_UNREACH, hook);
  break;
 case 133:
  nf_send_unreach(skb, ICMP_HOST_UNREACH, hook);
  break;
 case 129:
  nf_send_unreach(skb, ICMP_PROT_UNREACH, hook);
  break;
 case 130:
  nf_send_unreach(skb, ICMP_PORT_UNREACH, hook);
  break;
 case 132:
  nf_send_unreach(skb, ICMP_NET_ANO, hook);
  break;
 case 134:
  nf_send_unreach(skb, ICMP_HOST_ANO, hook);
  break;
 case 136:
  nf_send_unreach(skb, ICMP_PKT_FILTERED, hook);
  break;
 case 128:
  nf_send_reset(xt_net(par), skb, hook);
 case 135:

  break;
 }

 return NF_DROP;
}

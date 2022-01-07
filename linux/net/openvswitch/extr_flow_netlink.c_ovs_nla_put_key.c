
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_key {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int __ovs_nla_put_key (struct sw_flow_key const*,struct sw_flow_key const*,int,struct sk_buff*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int) ;

int ovs_nla_put_key(const struct sw_flow_key *swkey,
      const struct sw_flow_key *output, int attr, bool is_mask,
      struct sk_buff *skb)
{
 int err;
 struct nlattr *nla;

 nla = nla_nest_start_noflag(skb, attr);
 if (!nla)
  return -EMSGSIZE;
 err = __ovs_nla_put_key(swkey, output, is_mask, skb);
 if (err)
  return err;
 nla_nest_end(skb, nla);

 return 0;
}

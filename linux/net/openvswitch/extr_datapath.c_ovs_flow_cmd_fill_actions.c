
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw_flow_actions {int actions_len; int actions; } ;
struct sw_flow {int sf_acts; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;


 int EMSGSIZE ;
 int OVS_FLOW_ATTR_ACTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 int ovs_nla_put_actions (int ,int ,struct sk_buff*) ;
 struct sw_flow_actions* rcu_dereference_ovsl (int ) ;

__attribute__((used)) static int ovs_flow_cmd_fill_actions(const struct sw_flow *flow,
         struct sk_buff *skb, int skb_orig_len)
{
 struct nlattr *start;
 int err;
 start = nla_nest_start_noflag(skb, OVS_FLOW_ATTR_ACTIONS);
 if (start) {
  const struct sw_flow_actions *sf_acts;

  sf_acts = rcu_dereference_ovsl(flow->sf_acts);
  err = ovs_nla_put_actions(sf_acts->actions,
       sf_acts->actions_len, skb);

  if (!err)
   nla_nest_end(skb, start);
  else {
   if (skb_orig_len)
    return err;

   nla_nest_cancel(skb, start);
  }
 } else if (skb_orig_len) {
  return -EMSGSIZE;
 }

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct sample_arg {int probability; } ;
typedef struct nlattr const nlattr ;


 int EMSGSIZE ;
 int OVS_ACTION_ATTR_SAMPLE ;
 int OVS_SAMPLE_ATTR_ACTIONS ;
 int OVS_SAMPLE_ATTR_PROBABILITY ;
 void* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr const*) ;
 struct nlattr const* nla_nest_start_noflag (struct sk_buff*,int ) ;
 struct nlattr const* nla_next (struct nlattr const*,int*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int ovs_nla_put_actions (struct nlattr const*,int,struct sk_buff*) ;

__attribute__((used)) static int sample_action_to_attr(const struct nlattr *attr,
     struct sk_buff *skb)
{
 struct nlattr *start, *ac_start = ((void*)0), *sample_arg;
 int err = 0, rem = nla_len(attr);
 const struct sample_arg *arg;
 struct nlattr *actions;

 start = nla_nest_start_noflag(skb, OVS_ACTION_ATTR_SAMPLE);
 if (!start)
  return -EMSGSIZE;

 sample_arg = nla_data(attr);
 arg = nla_data(sample_arg);
 actions = nla_next(sample_arg, &rem);

 if (nla_put_u32(skb, OVS_SAMPLE_ATTR_PROBABILITY, arg->probability)) {
  err = -EMSGSIZE;
  goto out;
 }

 ac_start = nla_nest_start_noflag(skb, OVS_SAMPLE_ATTR_ACTIONS);
 if (!ac_start) {
  err = -EMSGSIZE;
  goto out;
 }

 err = ovs_nla_put_actions(actions, rem, skb);

out:
 if (err) {
  nla_nest_cancel(skb, ac_start);
  nla_nest_cancel(skb, start);
 } else {
  nla_nest_end(skb, ac_start);
  nla_nest_end(skb, start);
 }

 return err;
}

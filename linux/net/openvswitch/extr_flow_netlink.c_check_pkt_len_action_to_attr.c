
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct check_pkt_len_arg {int pkt_len; } ;


 int EMSGSIZE ;
 int OVS_ACTION_ATTR_CHECK_PKT_LEN ;
 int OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER ;
 int OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL ;
 int OVS_CHECK_PKT_LEN_ATTR_PKT_LEN ;
 void* nla_data (struct nlattr const*) ;
 int nla_len (struct nlattr const*) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 struct nlattr* nla_next (struct nlattr const*,int*) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int ovs_nla_put_actions (void*,int,struct sk_buff*) ;

__attribute__((used)) static int check_pkt_len_action_to_attr(const struct nlattr *attr,
     struct sk_buff *skb)
{
 struct nlattr *start, *ac_start = ((void*)0);
 const struct check_pkt_len_arg *arg;
 const struct nlattr *a, *cpl_arg;
 int err = 0, rem = nla_len(attr);

 start = nla_nest_start_noflag(skb, OVS_ACTION_ATTR_CHECK_PKT_LEN);
 if (!start)
  return -EMSGSIZE;




 cpl_arg = nla_data(attr);
 arg = nla_data(cpl_arg);

 if (nla_put_u16(skb, OVS_CHECK_PKT_LEN_ATTR_PKT_LEN, arg->pkt_len)) {
  err = -EMSGSIZE;
  goto out;
 }




 a = nla_next(cpl_arg, &rem);
 ac_start = nla_nest_start_noflag(skb,
       OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_LESS_EQUAL);
 if (!ac_start) {
  err = -EMSGSIZE;
  goto out;
 }

 err = ovs_nla_put_actions(nla_data(a), nla_len(a), skb);
 if (err) {
  nla_nest_cancel(skb, ac_start);
  goto out;
 } else {
  nla_nest_end(skb, ac_start);
 }




 a = nla_next(a, &rem);
 ac_start = nla_nest_start_noflag(skb,
       OVS_CHECK_PKT_LEN_ATTR_ACTIONS_IF_GREATER);
 if (!ac_start) {
  err = -EMSGSIZE;
  goto out;
 }

 err = ovs_nla_put_actions(nla_data(a), nla_len(a), skb);
 if (err) {
  nla_nest_cancel(skb, ac_start);
  goto out;
 } else {
  nla_nest_end(skb, ac_start);
 }

 nla_nest_end(skb, start);
 return 0;

out:
 nla_nest_cancel(skb, start);
 return err;
}

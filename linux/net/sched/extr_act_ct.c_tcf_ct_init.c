
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_ct_params {int dummy; } ;
struct tcf_ct {int tcf_lock; int params; } ;
struct tcf_chain {int dummy; } ;
struct tc_ct {int action; int index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int TCA_CT_MAX ;
 size_t TCA_CT_PARMS ;
 int act_ct_ops ;
 int ct_net_id ;
 int ct_policy ;
 int kfree (struct tcf_ct_params*) ;
 int kfree_rcu (struct tcf_ct_params*,int ) ;
 struct tcf_ct_params* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 struct tc_ct* nla_data (struct nlattr*) ;
 int nla_parse_nested (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int rcu ;
 int rcu_swap_protected (int ,struct tcf_ct_params*,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_action_check_ctrlact (int ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ;
 struct tcf_chain* tcf_action_set_ctrlact (struct tc_action*,int ,struct tcf_chain*) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 int tcf_ct_fill_params (struct net*,struct tcf_ct_params*,struct tc_ct*,struct nlattr**,struct netlink_ext_ack*) ;
 int tcf_idr_check_alloc (struct tc_action_net*,int *,struct tc_action**,int) ;
 int tcf_idr_cleanup (struct tc_action_net*,int ) ;
 int tcf_idr_create (struct tc_action_net*,int ,struct nlattr*,struct tc_action**,int *,int,int) ;
 int tcf_idr_insert (struct tc_action_net*,struct tc_action*) ;
 int tcf_idr_release (struct tc_action*,int) ;
 struct tcf_ct* to_ct (struct tc_action*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_ct_init(struct net *net, struct nlattr *nla,
         struct nlattr *est, struct tc_action **a,
         int replace, int bind, bool rtnl_held,
         struct tcf_proto *tp,
         struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, ct_net_id);
 struct tcf_ct_params *params = ((void*)0);
 struct nlattr *tb[TCA_CT_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 struct tc_ct *parm;
 struct tcf_ct *c;
 int err, res = 0;
 u32 index;

 if (!nla) {
  NL_SET_ERR_MSG_MOD(extack, "Ct requires attributes to be passed");
  return -EINVAL;
 }

 err = nla_parse_nested(tb, TCA_CT_MAX, nla, ct_policy, extack);
 if (err < 0)
  return err;

 if (!tb[TCA_CT_PARMS]) {
  NL_SET_ERR_MSG_MOD(extack, "Missing required ct parameters");
  return -EINVAL;
 }
 parm = nla_data(tb[TCA_CT_PARMS]);
 index = parm->index;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (err < 0)
  return err;

 if (!err) {
  err = tcf_idr_create(tn, index, est, a,
         &act_ct_ops, bind, 1);
  if (err) {
   tcf_idr_cleanup(tn, index);
   return err;
  }
  res = ACT_P_CREATED;
 } else {
  if (bind)
   return 0;

  if (!replace) {
   tcf_idr_release(*a, bind);
   return -EEXIST;
  }
 }
 err = tcf_action_check_ctrlact(parm->action, tp, &goto_ch, extack);
 if (err < 0)
  goto cleanup;

 c = to_ct(*a);

 params = kzalloc(sizeof(*params), GFP_KERNEL);
 if (unlikely(!params)) {
  err = -ENOMEM;
  goto cleanup;
 }

 err = tcf_ct_fill_params(net, params, parm, tb, extack);
 if (err)
  goto cleanup;

 spin_lock_bh(&c->tcf_lock);
 goto_ch = tcf_action_set_ctrlact(*a, parm->action, goto_ch);
 rcu_swap_protected(c->params, params, lockdep_is_held(&c->tcf_lock));
 spin_unlock_bh(&c->tcf_lock);

 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
 if (params)
  kfree_rcu(params, rcu);
 if (res == ACT_P_CREATED)
  tcf_idr_insert(tn, *a);

 return res;

cleanup:
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
 kfree(params);
 tcf_idr_release(*a, bind);
 return err;
}

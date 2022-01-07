
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_nat {int tcf_lock; int flags; int mask; int new_addr; int old_addr; } ;
struct tcf_chain {int dummy; } ;
struct tc_nat {int action; int flags; int mask; int new_addr; int old_addr; int index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 int TCA_NAT_MAX ;
 size_t TCA_NAT_PARMS ;
 int act_nat_ops ;
 int nat_net_id ;
 int nat_policy ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 struct tc_nat* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_action_check_ctrlact (int ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ;
 struct tcf_chain* tcf_action_set_ctrlact (struct tc_action*,int ,struct tcf_chain*) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 int tcf_idr_check_alloc (struct tc_action_net*,int *,struct tc_action**,int) ;
 int tcf_idr_cleanup (struct tc_action_net*,int ) ;
 int tcf_idr_create (struct tc_action_net*,int ,struct nlattr*,struct tc_action**,int *,int,int) ;
 int tcf_idr_insert (struct tc_action_net*,struct tc_action*) ;
 int tcf_idr_release (struct tc_action*,int) ;
 struct tcf_nat* to_tcf_nat (struct tc_action*) ;

__attribute__((used)) static int tcf_nat_init(struct net *net, struct nlattr *nla, struct nlattr *est,
   struct tc_action **a, int ovr, int bind,
   bool rtnl_held, struct tcf_proto *tp,
   struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, nat_net_id);
 struct nlattr *tb[TCA_NAT_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 struct tc_nat *parm;
 int ret = 0, err;
 struct tcf_nat *p;
 u32 index;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_NAT_MAX, nla, nat_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_NAT_PARMS] == ((void*)0))
  return -EINVAL;
 parm = nla_data(tb[TCA_NAT_PARMS]);
 index = parm->index;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (!err) {
  ret = tcf_idr_create(tn, index, est, a,
         &act_nat_ops, bind, 0);
  if (ret) {
   tcf_idr_cleanup(tn, index);
   return ret;
  }
  ret = ACT_P_CREATED;
 } else if (err > 0) {
  if (bind)
   return 0;
  if (!ovr) {
   tcf_idr_release(*a, bind);
   return -EEXIST;
  }
 } else {
  return err;
 }
 err = tcf_action_check_ctrlact(parm->action, tp, &goto_ch, extack);
 if (err < 0)
  goto release_idr;
 p = to_tcf_nat(*a);

 spin_lock_bh(&p->tcf_lock);
 p->old_addr = parm->old_addr;
 p->new_addr = parm->new_addr;
 p->mask = parm->mask;
 p->flags = parm->flags;

 goto_ch = tcf_action_set_ctrlact(*a, parm->action, goto_ch);
 spin_unlock_bh(&p->tcf_lock);
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);

 if (ret == ACT_P_CREATED)
  tcf_idr_insert(tn, *a);

 return ret;
release_idr:
 tcf_idr_release(*a, bind);
 return err;
}

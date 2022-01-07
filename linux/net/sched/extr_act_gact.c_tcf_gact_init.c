
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_gact {scalar_t__ tcfg_ptype; int tcf_lock; int tcfg_pval; int tcfg_paction; } ;
struct tcf_chain {int dummy; } ;
struct tc_gact_p {scalar_t__ ptype; int pval; int paction; } ;
struct tc_gact {int action; int index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ MAX_RAND ;
 int NL_SET_ERR_MSG (struct netlink_ext_ack*,char*) ;
 int TCA_GACT_MAX ;
 size_t TCA_GACT_PARMS ;
 size_t TCA_GACT_PROB ;
 scalar_t__ TC_ACT_EXT_CMP (int ,int ) ;
 int TC_ACT_GOTO_CHAIN ;
 int act_gact_ops ;
 int gact_net_id ;
 int gact_policy ;
 int max_t (int ,int,int ) ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 void* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int smp_wmb () ;
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
 struct tcf_gact* to_gact (struct tc_action*) ;
 int u16 ;

__attribute__((used)) static int tcf_gact_init(struct net *net, struct nlattr *nla,
    struct nlattr *est, struct tc_action **a,
    int ovr, int bind, bool rtnl_held,
    struct tcf_proto *tp, struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, gact_net_id);
 struct nlattr *tb[TCA_GACT_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 struct tc_gact *parm;
 struct tcf_gact *gact;
 int ret = 0;
 u32 index;
 int err;




 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_GACT_MAX, nla, gact_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_GACT_PARMS] == ((void*)0))
  return -EINVAL;
 parm = nla_data(tb[TCA_GACT_PARMS]);
 index = parm->index;


 if (tb[TCA_GACT_PROB] != ((void*)0))
  return -EOPNOTSUPP;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (!err) {
  ret = tcf_idr_create(tn, index, est, a,
         &act_gact_ops, bind, 1);
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
 gact = to_gact(*a);

 spin_lock_bh(&gact->tcf_lock);
 goto_ch = tcf_action_set_ctrlact(*a, parm->action, goto_ch);
 spin_unlock_bh(&gact->tcf_lock);

 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);

 if (ret == ACT_P_CREATED)
  tcf_idr_insert(tn, *a);
 return ret;
release_idr:
 tcf_idr_release(*a, bind);
 return err;
}

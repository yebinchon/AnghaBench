
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_defact {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_defact {int action; int index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 size_t TCA_DEF_DATA ;
 int TCA_DEF_MAX ;
 size_t TCA_DEF_PARMS ;
 int act_simp_ops ;
 int alloc_defdata (struct tcf_defact*,struct nlattr*) ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 struct tc_defact* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int reset_policy (struct tc_action*,struct nlattr*,struct tc_defact*,struct tcf_proto*,struct netlink_ext_ack*) ;
 int simp_net_id ;
 int simple_policy ;
 int tcf_action_check_ctrlact (int ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ;
 int tcf_action_set_ctrlact (struct tc_action*,int ,struct tcf_chain*) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 int tcf_idr_check_alloc (struct tc_action_net*,int *,struct tc_action**,int) ;
 int tcf_idr_cleanup (struct tc_action_net*,int ) ;
 int tcf_idr_create (struct tc_action_net*,int ,struct nlattr*,struct tc_action**,int *,int,int) ;
 int tcf_idr_insert (struct tc_action_net*,struct tc_action*) ;
 int tcf_idr_release (struct tc_action*,int) ;
 struct tcf_defact* to_defact (struct tc_action*) ;

__attribute__((used)) static int tcf_simp_init(struct net *net, struct nlattr *nla,
    struct nlattr *est, struct tc_action **a,
    int ovr, int bind, bool rtnl_held,
    struct tcf_proto *tp, struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, simp_net_id);
 struct nlattr *tb[TCA_DEF_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 struct tc_defact *parm;
 struct tcf_defact *d;
 bool exists = 0;
 int ret = 0, err;
 u32 index;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_DEF_MAX, nla, simple_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_DEF_PARMS] == ((void*)0))
  return -EINVAL;

 parm = nla_data(tb[TCA_DEF_PARMS]);
 index = parm->index;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (err < 0)
  return err;
 exists = err;
 if (exists && bind)
  return 0;

 if (tb[TCA_DEF_DATA] == ((void*)0)) {
  if (exists)
   tcf_idr_release(*a, bind);
  else
   tcf_idr_cleanup(tn, index);
  return -EINVAL;
 }

 if (!exists) {
  ret = tcf_idr_create(tn, index, est, a,
         &act_simp_ops, bind, 0);
  if (ret) {
   tcf_idr_cleanup(tn, index);
   return ret;
  }

  d = to_defact(*a);
  err = tcf_action_check_ctrlact(parm->action, tp, &goto_ch,
            extack);
  if (err < 0)
   goto release_idr;

  err = alloc_defdata(d, tb[TCA_DEF_DATA]);
  if (err < 0)
   goto put_chain;

  tcf_action_set_ctrlact(*a, parm->action, goto_ch);
  ret = ACT_P_CREATED;
 } else {
  if (!ovr) {
   err = -EEXIST;
   goto release_idr;
  }

  err = reset_policy(*a, tb[TCA_DEF_DATA], parm, tp, extack);
  if (err)
   goto release_idr;
 }

 if (ret == ACT_P_CREATED)
  tcf_idr_insert(tn, *a);
 return ret;
put_chain:
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
release_idr:
 tcf_idr_release(*a, bind);
 return err;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef void* u16 ;
struct tcf_skbedit_params {int flags; int priority; int mark; int mask; void* ptype; void* queue_mapping; } ;
struct tcf_skbedit {int tcf_lock; int params; } ;
struct tcf_proto {int dummy; } ;
struct tcf_chain {int dummy; } ;
struct tc_skbedit {int index; int action; } ;
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
 int SKBEDIT_F_INHERITDSFIELD ;
 int SKBEDIT_F_MARK ;
 int SKBEDIT_F_MASK ;
 int SKBEDIT_F_PRIORITY ;
 int SKBEDIT_F_PTYPE ;
 int SKBEDIT_F_QUEUE_MAPPING ;
 size_t TCA_SKBEDIT_FLAGS ;
 size_t TCA_SKBEDIT_MARK ;
 size_t TCA_SKBEDIT_MASK ;
 int TCA_SKBEDIT_MAX ;
 size_t TCA_SKBEDIT_PARMS ;
 size_t TCA_SKBEDIT_PRIORITY ;
 size_t TCA_SKBEDIT_PTYPE ;
 size_t TCA_SKBEDIT_QUEUE_MAPPING ;
 int act_skbedit_ops ;
 int kfree_rcu (struct tcf_skbedit_params*,int ) ;
 struct tcf_skbedit_params* kzalloc (int,int ) ;
 int lockdep_is_held (int *) ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 void* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,int *) ;
 int rcu ;
 int rcu_swap_protected (int ,struct tcf_skbedit_params*,int ) ;
 int skb_pkt_type_ok (void*) ;
 int skbedit_net_id ;
 int skbedit_policy ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_action_check_ctrlact (int ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ;
 struct tcf_chain* tcf_action_set_ctrlact (struct tc_action*,int ,struct tcf_chain*) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 int tcf_idr_check_alloc (struct tc_action_net*,int*,struct tc_action**,int) ;
 int tcf_idr_cleanup (struct tc_action_net*,int) ;
 int tcf_idr_create (struct tc_action_net*,int,struct nlattr*,struct tc_action**,int *,int,int) ;
 int tcf_idr_insert (struct tc_action_net*,struct tc_action*) ;
 int tcf_idr_release (struct tc_action*,int) ;
 struct tcf_skbedit* to_skbedit (struct tc_action*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_skbedit_init(struct net *net, struct nlattr *nla,
       struct nlattr *est, struct tc_action **a,
       int ovr, int bind, bool rtnl_held,
       struct tcf_proto *tp,
       struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, skbedit_net_id);
 struct tcf_skbedit_params *params_new;
 struct nlattr *tb[TCA_SKBEDIT_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 struct tc_skbedit *parm;
 struct tcf_skbedit *d;
 u32 flags = 0, *priority = ((void*)0), *mark = ((void*)0), *mask = ((void*)0);
 u16 *queue_mapping = ((void*)0), *ptype = ((void*)0);
 bool exists = 0;
 int ret = 0, err;
 u32 index;

 if (nla == ((void*)0))
  return -EINVAL;

 err = nla_parse_nested_deprecated(tb, TCA_SKBEDIT_MAX, nla,
       skbedit_policy, ((void*)0));
 if (err < 0)
  return err;

 if (tb[TCA_SKBEDIT_PARMS] == ((void*)0))
  return -EINVAL;

 if (tb[TCA_SKBEDIT_PRIORITY] != ((void*)0)) {
  flags |= SKBEDIT_F_PRIORITY;
  priority = nla_data(tb[TCA_SKBEDIT_PRIORITY]);
 }

 if (tb[TCA_SKBEDIT_QUEUE_MAPPING] != ((void*)0)) {
  flags |= SKBEDIT_F_QUEUE_MAPPING;
  queue_mapping = nla_data(tb[TCA_SKBEDIT_QUEUE_MAPPING]);
 }

 if (tb[TCA_SKBEDIT_PTYPE] != ((void*)0)) {
  ptype = nla_data(tb[TCA_SKBEDIT_PTYPE]);
  if (!skb_pkt_type_ok(*ptype))
   return -EINVAL;
  flags |= SKBEDIT_F_PTYPE;
 }

 if (tb[TCA_SKBEDIT_MARK] != ((void*)0)) {
  flags |= SKBEDIT_F_MARK;
  mark = nla_data(tb[TCA_SKBEDIT_MARK]);
 }

 if (tb[TCA_SKBEDIT_MASK] != ((void*)0)) {
  flags |= SKBEDIT_F_MASK;
  mask = nla_data(tb[TCA_SKBEDIT_MASK]);
 }

 if (tb[TCA_SKBEDIT_FLAGS] != ((void*)0)) {
  u64 *pure_flags = nla_data(tb[TCA_SKBEDIT_FLAGS]);

  if (*pure_flags & SKBEDIT_F_INHERITDSFIELD)
   flags |= SKBEDIT_F_INHERITDSFIELD;
 }

 parm = nla_data(tb[TCA_SKBEDIT_PARMS]);
 index = parm->index;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (err < 0)
  return err;
 exists = err;
 if (exists && bind)
  return 0;

 if (!flags) {
  if (exists)
   tcf_idr_release(*a, bind);
  else
   tcf_idr_cleanup(tn, index);
  return -EINVAL;
 }

 if (!exists) {
  ret = tcf_idr_create(tn, index, est, a,
         &act_skbedit_ops, bind, 1);
  if (ret) {
   tcf_idr_cleanup(tn, index);
   return ret;
  }

  d = to_skbedit(*a);
  ret = ACT_P_CREATED;
 } else {
  d = to_skbedit(*a);
  if (!ovr) {
   tcf_idr_release(*a, bind);
   return -EEXIST;
  }
 }
 err = tcf_action_check_ctrlact(parm->action, tp, &goto_ch, extack);
 if (err < 0)
  goto release_idr;

 params_new = kzalloc(sizeof(*params_new), GFP_KERNEL);
 if (unlikely(!params_new)) {
  err = -ENOMEM;
  goto put_chain;
 }

 params_new->flags = flags;
 if (flags & SKBEDIT_F_PRIORITY)
  params_new->priority = *priority;
 if (flags & SKBEDIT_F_QUEUE_MAPPING)
  params_new->queue_mapping = *queue_mapping;
 if (flags & SKBEDIT_F_MARK)
  params_new->mark = *mark;
 if (flags & SKBEDIT_F_PTYPE)
  params_new->ptype = *ptype;

 params_new->mask = 0xffffffff;
 if (flags & SKBEDIT_F_MASK)
  params_new->mask = *mask;

 spin_lock_bh(&d->tcf_lock);
 goto_ch = tcf_action_set_ctrlact(*a, parm->action, goto_ch);
 rcu_swap_protected(d->params, params_new,
      lockdep_is_held(&d->tcf_lock));
 spin_unlock_bh(&d->tcf_lock);
 if (params_new)
  kfree_rcu(params_new, rcu);
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);

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

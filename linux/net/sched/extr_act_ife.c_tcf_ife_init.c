
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tcf_proto {int dummy; } ;
struct tcf_ife_params {int flags; int eth_type; int eth_src; int eth_dst; } ;
struct tcf_ife_info {int tcf_lock; int params; int metalist; } ;
struct tcf_chain {int dummy; } ;
struct tc_ife {int flags; int action; int index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 int ETH_P_IFE ;
 int GFP_KERNEL ;
 int IFE_ENCODE ;
 int IFE_META_MAX ;
 int INIT_LIST_HEAD (int *) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 size_t TCA_IFE_DMAC ;
 int TCA_IFE_MAX ;
 size_t TCA_IFE_METALST ;
 size_t TCA_IFE_PARMS ;
 size_t TCA_IFE_SMAC ;
 size_t TCA_IFE_TYPE ;
 int act_ife_ops ;
 int eth_zero_addr (int ) ;
 int ether_addr_copy (int ,int *) ;
 int ife_net_id ;
 int * ife_policy ;
 int kfree (struct tcf_ife_params*) ;
 int kfree_rcu (struct tcf_ife_params*,int ) ;
 struct tcf_ife_params* kzalloc (int,int ) ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 void* nla_data (struct nlattr*) ;
 int nla_get_u16 (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int *,int *) ;
 int populate_metalist (struct tcf_ife_info*,struct nlattr**,int,int) ;
 int rcu ;
 int rcu_swap_protected (int ,struct tcf_ife_params*,int) ;
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
 struct tcf_ife_info* to_ife (struct tc_action*) ;
 int use_all_metadata (struct tcf_ife_info*,int) ;

__attribute__((used)) static int tcf_ife_init(struct net *net, struct nlattr *nla,
   struct nlattr *est, struct tc_action **a,
   int ovr, int bind, bool rtnl_held,
   struct tcf_proto *tp, struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, ife_net_id);
 struct nlattr *tb[TCA_IFE_MAX + 1];
 struct nlattr *tb2[IFE_META_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 struct tcf_ife_params *p;
 struct tcf_ife_info *ife;
 u16 ife_type = ETH_P_IFE;
 struct tc_ife *parm;
 u8 *daddr = ((void*)0);
 u8 *saddr = ((void*)0);
 bool exists = 0;
 int ret = 0;
 u32 index;
 int err;

 if (!nla) {
  NL_SET_ERR_MSG_MOD(extack, "IFE requires attributes to be passed");
  return -EINVAL;
 }

 err = nla_parse_nested_deprecated(tb, TCA_IFE_MAX, nla, ife_policy,
       ((void*)0));
 if (err < 0)
  return err;

 if (!tb[TCA_IFE_PARMS])
  return -EINVAL;

 parm = nla_data(tb[TCA_IFE_PARMS]);





 if (parm->flags & ~IFE_ENCODE)
  return -EINVAL;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return -ENOMEM;

 index = parm->index;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (err < 0) {
  kfree(p);
  return err;
 }
 exists = err;
 if (exists && bind) {
  kfree(p);
  return 0;
 }

 if (!exists) {
  ret = tcf_idr_create(tn, index, est, a, &act_ife_ops,
         bind, 1);
  if (ret) {
   tcf_idr_cleanup(tn, index);
   kfree(p);
   return ret;
  }
  ret = ACT_P_CREATED;
 } else if (!ovr) {
  tcf_idr_release(*a, bind);
  kfree(p);
  return -EEXIST;
 }

 ife = to_ife(*a);
 err = tcf_action_check_ctrlact(parm->action, tp, &goto_ch, extack);
 if (err < 0)
  goto release_idr;

 p->flags = parm->flags;

 if (parm->flags & IFE_ENCODE) {
  if (tb[TCA_IFE_TYPE])
   ife_type = nla_get_u16(tb[TCA_IFE_TYPE]);
  if (tb[TCA_IFE_DMAC])
   daddr = nla_data(tb[TCA_IFE_DMAC]);
  if (tb[TCA_IFE_SMAC])
   saddr = nla_data(tb[TCA_IFE_SMAC]);
 }

 if (parm->flags & IFE_ENCODE) {
  if (daddr)
   ether_addr_copy(p->eth_dst, daddr);
  else
   eth_zero_addr(p->eth_dst);

  if (saddr)
   ether_addr_copy(p->eth_src, saddr);
  else
   eth_zero_addr(p->eth_src);

  p->eth_type = ife_type;
 }


 if (ret == ACT_P_CREATED)
  INIT_LIST_HEAD(&ife->metalist);

 if (tb[TCA_IFE_METALST]) {
  err = nla_parse_nested_deprecated(tb2, IFE_META_MAX,
        tb[TCA_IFE_METALST], ((void*)0),
        ((void*)0));
  if (err)
   goto metadata_parse_err;
  err = populate_metalist(ife, tb2, exists, rtnl_held);
  if (err)
   goto metadata_parse_err;

 } else {





  err = use_all_metadata(ife, exists);
  if (err)
   goto metadata_parse_err;
 }

 if (exists)
  spin_lock_bh(&ife->tcf_lock);

 goto_ch = tcf_action_set_ctrlact(*a, parm->action, goto_ch);
 rcu_swap_protected(ife->params, p, 1);

 if (exists)
  spin_unlock_bh(&ife->tcf_lock);
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
 if (p)
  kfree_rcu(p, rcu);

 if (ret == ACT_P_CREATED)
  tcf_idr_insert(tn, *a);

 return ret;
metadata_parse_err:
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
release_idr:
 kfree(p);
 tcf_idr_release(*a, bind);
 return err;
}

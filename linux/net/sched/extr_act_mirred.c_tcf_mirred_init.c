
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcf_proto {int dummy; } ;
struct tcf_mirred {int tcfm_mac_header_xmit; int tcfm_eaction; int tcfm_list; int tcf_lock; int tcfm_dev; } ;
struct tcf_chain {int dummy; } ;
struct tc_mirred {int eaction; int action; scalar_t__ ifindex; int index; } ;
struct tc_action_net {int dummy; } ;
struct tc_action {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct net {int dummy; } ;


 int ACT_P_CREATED ;
 int EEXIST ;
 int EINVAL ;
 int ENODEV ;
 int INIT_LIST_HEAD (int *) ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;




 int TCA_MIRRED_MAX ;
 size_t TCA_MIRRED_PARMS ;
 int act_mirred_ops ;
 struct net_device* dev_get_by_index (struct net*,scalar_t__) ;
 int dev_is_mac_header_xmit (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int list_add (int *,int *) ;
 int lockdep_is_held (int *) ;
 int mirred_list ;
 int mirred_list_lock ;
 int mirred_net_id ;
 int mirred_policy ;
 struct tc_action_net* net_generic (struct net*,int ) ;
 struct tc_mirred* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,struct nlattr*,int ,struct netlink_ext_ack*) ;
 int rcu_swap_protected (int ,struct net_device*,int ) ;
 int spin_lock (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_action_check_ctrlact (int ,struct tcf_proto*,struct tcf_chain**,struct netlink_ext_ack*) ;
 struct tcf_chain* tcf_action_set_ctrlact (struct tc_action*,int ,struct tcf_chain*) ;
 int tcf_chain_put_by_act (struct tcf_chain*) ;
 int tcf_idr_check_alloc (struct tc_action_net*,int *,struct tc_action**,int) ;
 int tcf_idr_cleanup (struct tc_action_net*,int ) ;
 int tcf_idr_create (struct tc_action_net*,int ,struct nlattr*,struct tc_action**,int *,int,int) ;
 int tcf_idr_insert (struct tc_action_net*,struct tc_action*) ;
 int tcf_idr_release (struct tc_action*,int) ;
 struct tcf_mirred* to_mirred (struct tc_action*) ;

__attribute__((used)) static int tcf_mirred_init(struct net *net, struct nlattr *nla,
      struct nlattr *est, struct tc_action **a,
      int ovr, int bind, bool rtnl_held,
      struct tcf_proto *tp,
      struct netlink_ext_ack *extack)
{
 struct tc_action_net *tn = net_generic(net, mirred_net_id);
 struct nlattr *tb[TCA_MIRRED_MAX + 1];
 struct tcf_chain *goto_ch = ((void*)0);
 bool mac_header_xmit = 0;
 struct tc_mirred *parm;
 struct tcf_mirred *m;
 struct net_device *dev;
 bool exists = 0;
 int ret, err;
 u32 index;

 if (!nla) {
  NL_SET_ERR_MSG_MOD(extack, "Mirred requires attributes to be passed");
  return -EINVAL;
 }
 ret = nla_parse_nested_deprecated(tb, TCA_MIRRED_MAX, nla,
       mirred_policy, extack);
 if (ret < 0)
  return ret;
 if (!tb[TCA_MIRRED_PARMS]) {
  NL_SET_ERR_MSG_MOD(extack, "Missing required mirred parameters");
  return -EINVAL;
 }
 parm = nla_data(tb[TCA_MIRRED_PARMS]);
 index = parm->index;
 err = tcf_idr_check_alloc(tn, &index, a, bind);
 if (err < 0)
  return err;
 exists = err;
 if (exists && bind)
  return 0;

 switch (parm->eaction) {
 case 131:
 case 130:
 case 128:
 case 129:
  break;
 default:
  if (exists)
   tcf_idr_release(*a, bind);
  else
   tcf_idr_cleanup(tn, index);
  NL_SET_ERR_MSG_MOD(extack, "Unknown mirred option");
  return -EINVAL;
 }

 if (!exists) {
  if (!parm->ifindex) {
   tcf_idr_cleanup(tn, index);
   NL_SET_ERR_MSG_MOD(extack, "Specified device does not exist");
   return -EINVAL;
  }
  ret = tcf_idr_create(tn, index, est, a,
         &act_mirred_ops, bind, 1);
  if (ret) {
   tcf_idr_cleanup(tn, index);
   return ret;
  }
  ret = ACT_P_CREATED;
 } else if (!ovr) {
  tcf_idr_release(*a, bind);
  return -EEXIST;
 }

 m = to_mirred(*a);
 if (ret == ACT_P_CREATED)
  INIT_LIST_HEAD(&m->tcfm_list);

 err = tcf_action_check_ctrlact(parm->action, tp, &goto_ch, extack);
 if (err < 0)
  goto release_idr;

 spin_lock_bh(&m->tcf_lock);

 if (parm->ifindex) {
  dev = dev_get_by_index(net, parm->ifindex);
  if (!dev) {
   spin_unlock_bh(&m->tcf_lock);
   err = -ENODEV;
   goto put_chain;
  }
  mac_header_xmit = dev_is_mac_header_xmit(dev);
  rcu_swap_protected(m->tcfm_dev, dev,
       lockdep_is_held(&m->tcf_lock));
  if (dev)
   dev_put(dev);
  m->tcfm_mac_header_xmit = mac_header_xmit;
 }
 goto_ch = tcf_action_set_ctrlact(*a, parm->action, goto_ch);
 m->tcfm_eaction = parm->eaction;
 spin_unlock_bh(&m->tcf_lock);
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);

 if (ret == ACT_P_CREATED) {
  spin_lock(&mirred_list_lock);
  list_add(&m->tcfm_list, &mirred_list);
  spin_unlock(&mirred_list_lock);

  tcf_idr_insert(tn, *a);
 }

 return ret;
put_chain:
 if (goto_ch)
  tcf_chain_put_by_act(goto_ch);
release_idr:
 tcf_idr_release(*a, bind);
 return err;
}

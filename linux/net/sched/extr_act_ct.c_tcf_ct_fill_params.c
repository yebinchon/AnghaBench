
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_ct_params {int zone; int ct_action; int mark; int* labels; struct nf_conn* tmpl; int * labels_mask; int mark_mask; } ;
struct tc_ct_action_net {int labels; } ;
struct tc_ct {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_zone {int dummy; } ;
struct nf_conn {int ct_general; int status; } ;
struct netlink_ext_ack {int dummy; } ;
struct net {int dummy; } ;


 int CONFIG_NF_CONNTRACK_LABELS ;
 int CONFIG_NF_CONNTRACK_MARK ;
 int CONFIG_NF_CONNTRACK_ZONES ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IPS_CONFIRMED_BIT ;
 int IS_ENABLED (int ) ;
 int NF_CT_DEFAULT_ZONE_DIR ;
 int NF_CT_DEFAULT_ZONE_ID ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 size_t TCA_CT_ACTION ;
 int TCA_CT_ACT_CLEAR ;
 size_t TCA_CT_LABELS ;
 int TCA_CT_LABELS_MASK ;
 size_t TCA_CT_MARK ;
 int TCA_CT_MARK_MASK ;
 int TCA_CT_UNSPEC ;
 size_t TCA_CT_ZONE ;
 int __set_bit (int ,int *) ;
 int ct_net_id ;
 struct tc_ct_action_net* net_generic (struct net*,int ) ;
 int nf_conntrack_get (int *) ;
 struct nf_conn* nf_ct_tmpl_alloc (struct net*,struct nf_conntrack_zone*,int ) ;
 int nf_ct_zone_init (struct nf_conntrack_zone*,int,int ,int ) ;
 int tcf_ct_fill_params_nat (struct tcf_ct_params*,struct tc_ct*,struct nlattr**,struct netlink_ext_ack*) ;
 int tcf_ct_set_key_val (struct nlattr**,int*,size_t,int *,int ,int) ;

__attribute__((used)) static int tcf_ct_fill_params(struct net *net,
         struct tcf_ct_params *p,
         struct tc_ct *parm,
         struct nlattr **tb,
         struct netlink_ext_ack *extack)
{
 struct tc_ct_action_net *tn = net_generic(net, ct_net_id);
 struct nf_conntrack_zone zone;
 struct nf_conn *tmpl;
 int err;

 p->zone = NF_CT_DEFAULT_ZONE_ID;

 tcf_ct_set_key_val(tb,
      &p->ct_action, TCA_CT_ACTION,
      ((void*)0), TCA_CT_UNSPEC,
      sizeof(p->ct_action));

 if (p->ct_action & TCA_CT_ACT_CLEAR)
  return 0;

 err = tcf_ct_fill_params_nat(p, parm, tb, extack);
 if (err)
  return err;

 if (tb[TCA_CT_MARK]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK_MARK)) {
   NL_SET_ERR_MSG_MOD(extack, "Conntrack mark isn't enabled.");
   return -EOPNOTSUPP;
  }
  tcf_ct_set_key_val(tb,
       &p->mark, TCA_CT_MARK,
       &p->mark_mask, TCA_CT_MARK_MASK,
       sizeof(p->mark));
 }

 if (tb[TCA_CT_LABELS]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK_LABELS)) {
   NL_SET_ERR_MSG_MOD(extack, "Conntrack labels isn't enabled.");
   return -EOPNOTSUPP;
  }

  if (!tn->labels) {
   NL_SET_ERR_MSG_MOD(extack, "Failed to set connlabel length");
   return -EOPNOTSUPP;
  }
  tcf_ct_set_key_val(tb,
       p->labels, TCA_CT_LABELS,
       p->labels_mask, TCA_CT_LABELS_MASK,
       sizeof(p->labels));
 }

 if (tb[TCA_CT_ZONE]) {
  if (!IS_ENABLED(CONFIG_NF_CONNTRACK_ZONES)) {
   NL_SET_ERR_MSG_MOD(extack, "Conntrack zones isn't enabled.");
   return -EOPNOTSUPP;
  }

  tcf_ct_set_key_val(tb,
       &p->zone, TCA_CT_ZONE,
       ((void*)0), TCA_CT_UNSPEC,
       sizeof(p->zone));
 }

 if (p->zone == NF_CT_DEFAULT_ZONE_ID)
  return 0;

 nf_ct_zone_init(&zone, p->zone, NF_CT_DEFAULT_ZONE_DIR, 0);
 tmpl = nf_ct_tmpl_alloc(net, &zone, GFP_KERNEL);
 if (!tmpl) {
  NL_SET_ERR_MSG_MOD(extack, "Failed to allocate conntrack template");
  return -ENOMEM;
 }
 __set_bit(IPS_CONFIRMED_BIT, &tmpl->status);
 nf_conntrack_get(&tmpl->ct_general);
 p->tmpl = tmpl;

 return 0;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct tcf_result {int dummy; } ;
struct tcf_ct_params {int ct_action; int labels_mask; int labels; int mark_mask; int mark; int range; int zone; struct nf_conn* tmpl; } ;
struct tcf_ct {int tcf_action; int params; } ;
struct tc_action {int cpu_qstats; int cpu_bstats; } ;
struct sk_buff {int dev; } ;
struct nf_hook_state {scalar_t__ pf; struct net* net; int hook; } ;
struct nf_conn {int ct_general; } ;
struct net {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int EINPROGRESS ;
 int IP_CT_NEW ;
 int IP_CT_UNTRACKED ;
 scalar_t__ NFPROTO_UNSPEC ;
 int NF_ACCEPT ;
 int NF_INET_PRE_ROUTING ;
 int READ_ONCE (int ) ;
 int TCA_CT_ACT_CLEAR ;
 int TCA_CT_ACT_COMMIT ;
 int TCA_CT_ACT_FORCE ;
 int TC_ACT_SHOT ;
 int TC_ACT_STOLEN ;
 int bstats_cpu_update (int ,struct sk_buff*) ;
 struct net* dev_net (int ) ;
 int nf_conntrack_confirm (struct sk_buff*) ;
 int nf_conntrack_get (int *) ;
 int nf_conntrack_in (struct sk_buff*,struct nf_hook_state*) ;
 int nf_conntrack_put (int *) ;
 int nf_ct_deliver_cached_events (struct nf_conn*) ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 int nf_ct_set (struct sk_buff*,struct nf_conn*,int ) ;
 int qstats_drop_inc (int ) ;
 struct tcf_ct_params* rcu_dereference_bh (int ) ;
 int skb_network_offset (struct sk_buff*) ;
 int * skb_nfct (struct sk_buff*) ;
 int skb_pull_rcsum (struct sk_buff*,int) ;
 int skb_push_rcsum (struct sk_buff*,int) ;
 int tcf_ct_act_nat (struct sk_buff*,struct nf_conn*,int,int,int *,int) ;
 int tcf_ct_act_set_labels (struct nf_conn*,int ,int ) ;
 int tcf_ct_act_set_mark (struct nf_conn*,int ,int ) ;
 int tcf_ct_handle_fragments (struct net*,struct sk_buff*,scalar_t__,int ) ;
 int tcf_ct_skb_network_trim (struct sk_buff*,scalar_t__) ;
 scalar_t__ tcf_ct_skb_nf_family (struct sk_buff*) ;
 int tcf_ct_skb_nfct_cached (struct net*,struct sk_buff*,int ,int) ;
 int this_cpu_ptr (int ) ;
 struct tcf_ct* to_ct (struct tc_action const*) ;

__attribute__((used)) static int tcf_ct_act(struct sk_buff *skb, const struct tc_action *a,
        struct tcf_result *res)
{
 struct net *net = dev_net(skb->dev);
 bool cached, commit, clear, force;
 enum ip_conntrack_info ctinfo;
 struct tcf_ct *c = to_ct(a);
 struct nf_conn *tmpl = ((void*)0);
 struct nf_hook_state state;
 int nh_ofs, err, retval;
 struct tcf_ct_params *p;
 struct nf_conn *ct;
 u8 family;

 p = rcu_dereference_bh(c->params);

 retval = READ_ONCE(c->tcf_action);
 commit = p->ct_action & TCA_CT_ACT_COMMIT;
 clear = p->ct_action & TCA_CT_ACT_CLEAR;
 force = p->ct_action & TCA_CT_ACT_FORCE;
 tmpl = p->tmpl;

 if (clear) {
  ct = nf_ct_get(skb, &ctinfo);
  if (ct) {
   nf_conntrack_put(&ct->ct_general);
   nf_ct_set(skb, ((void*)0), IP_CT_UNTRACKED);
  }

  goto out;
 }

 family = tcf_ct_skb_nf_family(skb);
 if (family == NFPROTO_UNSPEC)
  goto drop;




 nh_ofs = skb_network_offset(skb);
 skb_pull_rcsum(skb, nh_ofs);
 err = tcf_ct_handle_fragments(net, skb, family, p->zone);
 if (err == -EINPROGRESS) {
  retval = TC_ACT_STOLEN;
  goto out;
 }
 if (err)
  goto drop;

 err = tcf_ct_skb_network_trim(skb, family);
 if (err)
  goto drop;






 cached = tcf_ct_skb_nfct_cached(net, skb, p->zone, force);
 if (!cached) {

  if (tmpl) {
   ct = nf_ct_get(skb, &ctinfo);
   if (skb_nfct(skb))
    nf_conntrack_put(skb_nfct(skb));
   nf_conntrack_get(&tmpl->ct_general);
   nf_ct_set(skb, tmpl, IP_CT_NEW);
  }

  state.hook = NF_INET_PRE_ROUTING;
  state.net = net;
  state.pf = family;
  err = nf_conntrack_in(skb, &state);
  if (err != NF_ACCEPT)
   goto out_push;
 }

 ct = nf_ct_get(skb, &ctinfo);
 if (!ct)
  goto out_push;
 nf_ct_deliver_cached_events(ct);

 err = tcf_ct_act_nat(skb, ct, ctinfo, p->ct_action, &p->range, commit);
 if (err != NF_ACCEPT)
  goto drop;

 if (commit) {
  tcf_ct_act_set_mark(ct, p->mark, p->mark_mask);
  tcf_ct_act_set_labels(ct, p->labels, p->labels_mask);




  nf_conntrack_confirm(skb);
 }

out_push:
 skb_push_rcsum(skb, nh_ofs);

out:
 bstats_cpu_update(this_cpu_ptr(a->cpu_bstats), skb);
 return retval;

drop:
 qstats_drop_inc(this_cpu_ptr(a->cpu_qstats));
 return TC_ACT_SHOT;
}

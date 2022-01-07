
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_ct_params {int ct_action; int mark; int* labels; int zone; int * labels_mask; int mark_mask; } ;
struct tcf_ct {int tcf_lock; int tcf_tm; int tcf_action; int params; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_ct {int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int CONFIG_NF_CONNTRACK_LABELS ;
 int CONFIG_NF_CONNTRACK_MARK ;
 int CONFIG_NF_CONNTRACK_ZONES ;
 scalar_t__ IS_ENABLED (int ) ;
 int TCA_CT_ACTION ;
 int TCA_CT_ACT_CLEAR ;
 int TCA_CT_LABELS ;
 int TCA_CT_LABELS_MASK ;
 int TCA_CT_MARK ;
 int TCA_CT_MARK_MASK ;
 int TCA_CT_PAD ;
 int TCA_CT_PARMS ;
 int TCA_CT_TM ;
 int TCA_CT_UNSPEC ;
 int TCA_CT_ZONE ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_ct*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct tcf_ct_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ tcf_ct_dump_key_val (struct sk_buff*,int*,int ,int *,int ,int) ;
 scalar_t__ tcf_ct_dump_nat (struct sk_buff*,struct tcf_ct_params*) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_ct* to_ct (struct tc_action*) ;

__attribute__((used)) static inline int tcf_ct_dump(struct sk_buff *skb, struct tc_action *a,
         int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_ct *c = to_ct(a);
 struct tcf_ct_params *p;

 struct tc_ct opt = {
  .index = c->tcf_index,
  .refcnt = refcount_read(&c->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&c->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&c->tcf_lock);
 p = rcu_dereference_protected(c->params,
          lockdep_is_held(&c->tcf_lock));
 opt.action = c->tcf_action;

 if (tcf_ct_dump_key_val(skb,
    &p->ct_action, TCA_CT_ACTION,
    ((void*)0), TCA_CT_UNSPEC,
    sizeof(p->ct_action)))
  goto nla_put_failure;

 if (p->ct_action & TCA_CT_ACT_CLEAR)
  goto skip_dump;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_MARK) &&
     tcf_ct_dump_key_val(skb,
    &p->mark, TCA_CT_MARK,
    &p->mark_mask, TCA_CT_MARK_MASK,
    sizeof(p->mark)))
  goto nla_put_failure;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_LABELS) &&
     tcf_ct_dump_key_val(skb,
    p->labels, TCA_CT_LABELS,
    p->labels_mask, TCA_CT_LABELS_MASK,
    sizeof(p->labels)))
  goto nla_put_failure;

 if (IS_ENABLED(CONFIG_NF_CONNTRACK_ZONES) &&
     tcf_ct_dump_key_val(skb,
    &p->zone, TCA_CT_ZONE,
    ((void*)0), TCA_CT_UNSPEC,
    sizeof(p->zone)))
  goto nla_put_failure;

 if (tcf_ct_dump_nat(skb, p))
  goto nla_put_failure;

skip_dump:
 if (nla_put(skb, TCA_CT_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &c->tcf_tm);
 if (nla_put_64bit(skb, TCA_CT_TM, sizeof(t), &t, TCA_CT_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&c->tcf_lock);

 return skb->len;
nla_put_failure:
 spin_unlock_bh(&c->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_gact {int tcf_lock; int tcf_tm; scalar_t__ tcfg_ptype; int tcfg_pval; int tcfg_paction; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_gact_p {scalar_t__ ptype; int pval; int paction; int action; int bindcnt; int refcnt; int index; } ;
struct tc_gact {scalar_t__ ptype; int pval; int paction; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int p_opt ;
typedef int opt ;


 int TCA_GACT_PAD ;
 int TCA_GACT_PARMS ;
 int TCA_GACT_PROB ;
 int TCA_GACT_TM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_gact_p*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_gact* to_gact (struct tc_action*) ;

__attribute__((used)) static int tcf_gact_dump(struct sk_buff *skb, struct tc_action *a,
    int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_gact *gact = to_gact(a);
 struct tc_gact opt = {
  .index = gact->tcf_index,
  .refcnt = refcount_read(&gact->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&gact->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&gact->tcf_lock);
 opt.action = gact->tcf_action;
 if (nla_put(skb, TCA_GACT_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;
 tcf_tm_dump(&t, &gact->tcf_tm);
 if (nla_put_64bit(skb, TCA_GACT_TM, sizeof(t), &t, TCA_GACT_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&gact->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&gact->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

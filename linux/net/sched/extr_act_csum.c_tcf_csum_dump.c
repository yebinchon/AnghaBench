
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_csum_params {int update_flags; } ;
struct tcf_csum {int tcf_lock; int tcf_tm; int tcf_action; int params; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_csum {int update_flags; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int TCA_CSUM_PAD ;
 int TCA_CSUM_PARMS ;
 int TCA_CSUM_TM ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_csum*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct tcf_csum_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_csum* to_tcf_csum (struct tc_action*) ;

__attribute__((used)) static int tcf_csum_dump(struct sk_buff *skb, struct tc_action *a, int bind,
    int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_csum *p = to_tcf_csum(a);
 struct tcf_csum_params *params;
 struct tc_csum opt = {
  .index = p->tcf_index,
  .refcnt = refcount_read(&p->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&p->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&p->tcf_lock);
 params = rcu_dereference_protected(p->params,
        lockdep_is_held(&p->tcf_lock));
 opt.action = p->tcf_action;
 opt.update_flags = params->update_flags;

 if (nla_put(skb, TCA_CSUM_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &p->tcf_tm);
 if (nla_put_64bit(skb, TCA_CSUM_TM, sizeof(t), &t, TCA_CSUM_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&p->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&p->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

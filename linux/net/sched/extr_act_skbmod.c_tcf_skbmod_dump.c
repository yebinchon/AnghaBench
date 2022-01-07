
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_skbmod_params {int flags; int eth_type; struct tc_skbmod* eth_src; struct tc_skbmod* eth_dst; } ;
struct tcf_skbmod {int tcf_lock; int tcf_tm; int skbmod_p; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_skbmod {int flags; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int ETH_ALEN ;
 int SKBMOD_F_DMAC ;
 int SKBMOD_F_ETYPE ;
 int SKBMOD_F_SMAC ;
 int TCA_SKBMOD_DMAC ;
 int TCA_SKBMOD_ETYPE ;
 int TCA_SKBMOD_PAD ;
 int TCA_SKBMOD_PARMS ;
 int TCA_SKBMOD_SMAC ;
 int TCA_SKBMOD_TM ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_skbmod*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int ntohs (int ) ;
 struct tcf_skbmod_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_skbmod* to_skbmod (struct tc_action*) ;

__attribute__((used)) static int tcf_skbmod_dump(struct sk_buff *skb, struct tc_action *a,
      int bind, int ref)
{
 struct tcf_skbmod *d = to_skbmod(a);
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_skbmod_params *p;
 struct tc_skbmod opt = {
  .index = d->tcf_index,
  .refcnt = refcount_read(&d->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&d->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&d->tcf_lock);
 opt.action = d->tcf_action;
 p = rcu_dereference_protected(d->skbmod_p,
          lockdep_is_held(&d->tcf_lock));
 opt.flags = p->flags;
 if (nla_put(skb, TCA_SKBMOD_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;
 if ((p->flags & SKBMOD_F_DMAC) &&
     nla_put(skb, TCA_SKBMOD_DMAC, ETH_ALEN, p->eth_dst))
  goto nla_put_failure;
 if ((p->flags & SKBMOD_F_SMAC) &&
     nla_put(skb, TCA_SKBMOD_SMAC, ETH_ALEN, p->eth_src))
  goto nla_put_failure;
 if ((p->flags & SKBMOD_F_ETYPE) &&
     nla_put_u16(skb, TCA_SKBMOD_ETYPE, ntohs(p->eth_type)))
  goto nla_put_failure;

 tcf_tm_dump(&t, &d->tcf_tm);
 if (nla_put_64bit(skb, TCA_SKBMOD_TM, sizeof(t), &t, TCA_SKBMOD_PAD))
  goto nla_put_failure;

 spin_unlock_bh(&d->tcf_lock);
 return skb->len;
nla_put_failure:
 spin_unlock_bh(&d->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_nat {int tcf_lock; int tcf_tm; int tcf_action; int flags; int mask; int new_addr; int old_addr; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_nat {int action; int flags; int mask; int new_addr; int old_addr; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int TCA_NAT_PAD ;
 int TCA_NAT_PARMS ;
 int TCA_NAT_TM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_nat*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_nat* to_tcf_nat (struct tc_action*) ;

__attribute__((used)) static int tcf_nat_dump(struct sk_buff *skb, struct tc_action *a,
   int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_nat *p = to_tcf_nat(a);
 struct tc_nat opt = {
  .index = p->tcf_index,
  .refcnt = refcount_read(&p->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&p->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&p->tcf_lock);
 opt.old_addr = p->old_addr;
 opt.new_addr = p->new_addr;
 opt.mask = p->mask;
 opt.flags = p->flags;
 opt.action = p->tcf_action;

 if (nla_put(skb, TCA_NAT_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &p->tcf_tm);
 if (nla_put_64bit(skb, TCA_NAT_TM, sizeof(t), &t, TCA_NAT_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&p->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&p->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

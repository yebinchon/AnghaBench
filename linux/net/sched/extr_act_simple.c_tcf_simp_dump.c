
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_defact {int tcf_lock; int tcf_tm; int tcfd_defdata; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_defact {int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int TCA_DEF_DATA ;
 int TCA_DEF_PAD ;
 int TCA_DEF_PARMS ;
 int TCA_DEF_TM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_defact*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_defact* to_defact (struct tc_action*) ;

__attribute__((used)) static int tcf_simp_dump(struct sk_buff *skb, struct tc_action *a,
    int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_defact *d = to_defact(a);
 struct tc_defact opt = {
  .index = d->tcf_index,
  .refcnt = refcount_read(&d->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&d->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&d->tcf_lock);
 opt.action = d->tcf_action;
 if (nla_put(skb, TCA_DEF_PARMS, sizeof(opt), &opt) ||
     nla_put_string(skb, TCA_DEF_DATA, d->tcfd_defdata))
  goto nla_put_failure;

 tcf_tm_dump(&t, &d->tcf_tm);
 if (nla_put_64bit(skb, TCA_DEF_TM, sizeof(t), &t, TCA_DEF_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&d->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&d->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

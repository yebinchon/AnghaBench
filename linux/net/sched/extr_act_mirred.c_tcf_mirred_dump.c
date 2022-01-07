
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_mirred {int tcf_lock; int tcf_tm; int tcfm_eaction; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_mirred {int ifindex; int eaction; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct net_device {int ifindex; } ;
typedef int opt ;


 int TCA_MIRRED_PAD ;
 int TCA_MIRRED_PARMS ;
 int TCA_MIRRED_TM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_mirred*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 struct net_device* tcf_mirred_dev_dereference (struct tcf_mirred*) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_mirred* to_mirred (struct tc_action*) ;

__attribute__((used)) static int tcf_mirred_dump(struct sk_buff *skb, struct tc_action *a, int bind,
      int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_mirred *m = to_mirred(a);
 struct tc_mirred opt = {
  .index = m->tcf_index,
  .refcnt = refcount_read(&m->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&m->tcf_bindcnt) - bind,
 };
 struct net_device *dev;
 struct tcf_t t;

 spin_lock_bh(&m->tcf_lock);
 opt.action = m->tcf_action;
 opt.eaction = m->tcfm_eaction;
 dev = tcf_mirred_dev_dereference(m);
 if (dev)
  opt.ifindex = dev->ifindex;

 if (nla_put(skb, TCA_MIRRED_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &m->tcf_tm);
 if (nla_put_64bit(skb, TCA_MIRRED_TM, sizeof(t), &t, TCA_MIRRED_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&m->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&m->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

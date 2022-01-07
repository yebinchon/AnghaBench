
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_pedit {int tcfp_nkeys; int tcf_lock; int tcf_tm; scalar_t__ tcfp_keys_ex; int tcf_bindcnt; int tcf_refcnt; int tcf_action; int tcfp_flags; int tcf_index; int tcfp_keys; } ;
struct tc_pedit_key {int dummy; } ;
struct tc_pedit {int nkeys; scalar_t__ bindcnt; scalar_t__ refcnt; int action; int flags; int index; int keys; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;


 int ENOBUFS ;
 int GFP_ATOMIC ;
 int TCA_PEDIT_PAD ;
 int TCA_PEDIT_PARMS ;
 int TCA_PEDIT_PARMS_EX ;
 int TCA_PEDIT_TM ;
 scalar_t__ atomic_read (int *) ;
 int keys ;
 int kfree (struct tc_pedit*) ;
 struct tc_pedit* kzalloc (int,int ) ;
 int memcpy (int ,int ,int) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_pedit*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 scalar_t__ refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int struct_size (struct tc_pedit*,int ,int) ;
 scalar_t__ tcf_pedit_key_ex_dump (struct sk_buff*,scalar_t__,int) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_pedit* to_pedit (struct tc_action*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_pedit_dump(struct sk_buff *skb, struct tc_action *a,
     int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_pedit *p = to_pedit(a);
 struct tc_pedit *opt;
 struct tcf_t t;
 int s;

 s = struct_size(opt, keys, p->tcfp_nkeys);


 opt = kzalloc(s, GFP_ATOMIC);
 if (unlikely(!opt))
  return -ENOBUFS;

 spin_lock_bh(&p->tcf_lock);
 memcpy(opt->keys, p->tcfp_keys,
        p->tcfp_nkeys * sizeof(struct tc_pedit_key));
 opt->index = p->tcf_index;
 opt->nkeys = p->tcfp_nkeys;
 opt->flags = p->tcfp_flags;
 opt->action = p->tcf_action;
 opt->refcnt = refcount_read(&p->tcf_refcnt) - ref;
 opt->bindcnt = atomic_read(&p->tcf_bindcnt) - bind;

 if (p->tcfp_keys_ex) {
  if (tcf_pedit_key_ex_dump(skb,
       p->tcfp_keys_ex,
       p->tcfp_nkeys))
   goto nla_put_failure;

  if (nla_put(skb, TCA_PEDIT_PARMS_EX, s, opt))
   goto nla_put_failure;
 } else {
  if (nla_put(skb, TCA_PEDIT_PARMS, s, opt))
   goto nla_put_failure;
 }

 tcf_tm_dump(&t, &p->tcf_tm);
 if (nla_put_64bit(skb, TCA_PEDIT_TM, sizeof(t), &t, TCA_PEDIT_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&p->tcf_lock);

 kfree(opt);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(&p->tcf_lock);
 nlmsg_trim(skb, b);
 kfree(opt);
 return -1;
}

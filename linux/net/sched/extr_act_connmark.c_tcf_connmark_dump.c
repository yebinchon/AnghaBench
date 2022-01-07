
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_connmark_info {int tcf_lock; int tcf_tm; int zone; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_connmark {int zone; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int TCA_CONNMARK_PAD ;
 int TCA_CONNMARK_PARMS ;
 int TCA_CONNMARK_TM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_connmark*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_connmark_info* to_connmark (struct tc_action*) ;

__attribute__((used)) static inline int tcf_connmark_dump(struct sk_buff *skb, struct tc_action *a,
        int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_connmark_info *ci = to_connmark(a);
 struct tc_connmark opt = {
  .index = ci->tcf_index,
  .refcnt = refcount_read(&ci->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&ci->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&ci->tcf_lock);
 opt.action = ci->tcf_action;
 opt.zone = ci->zone;
 if (nla_put(skb, TCA_CONNMARK_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &ci->tcf_tm);
 if (nla_put_64bit(skb, TCA_CONNMARK_TM, sizeof(t), &t,
     TCA_CONNMARK_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&ci->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&ci->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

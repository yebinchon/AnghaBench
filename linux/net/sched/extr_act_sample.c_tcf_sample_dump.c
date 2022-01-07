
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_sample {int tcf_lock; int psample_group_num; int trunc_size; scalar_t__ truncate; int rate; int tcf_tm; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_sample {int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int TCA_SAMPLE_PAD ;
 int TCA_SAMPLE_PARMS ;
 int TCA_SAMPLE_PSAMPLE_GROUP ;
 int TCA_SAMPLE_RATE ;
 int TCA_SAMPLE_TM ;
 int TCA_SAMPLE_TRUNC_SIZE ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_sample*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_sample* to_sample (struct tc_action*) ;

__attribute__((used)) static int tcf_sample_dump(struct sk_buff *skb, struct tc_action *a,
      int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_sample *s = to_sample(a);
 struct tc_sample opt = {
  .index = s->tcf_index,
  .refcnt = refcount_read(&s->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&s->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&s->tcf_lock);
 opt.action = s->tcf_action;
 if (nla_put(skb, TCA_SAMPLE_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &s->tcf_tm);
 if (nla_put_64bit(skb, TCA_SAMPLE_TM, sizeof(t), &t, TCA_SAMPLE_PAD))
  goto nla_put_failure;

 if (nla_put_u32(skb, TCA_SAMPLE_RATE, s->rate))
  goto nla_put_failure;

 if (s->truncate)
  if (nla_put_u32(skb, TCA_SAMPLE_TRUNC_SIZE, s->trunc_size))
   goto nla_put_failure;

 if (nla_put_u32(skb, TCA_SAMPLE_PSAMPLE_GROUP, s->psample_group_num))
  goto nla_put_failure;
 spin_unlock_bh(&s->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&s->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tm ;
struct tcf_t {int dummy; } ;
struct tcf_bpf {int tcf_lock; int tcf_tm; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_action {int dummy; } ;
struct tc_act_bpf {int action; int bindcnt; int refcnt; int index; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int TCA_ACT_BPF_PAD ;
 int TCA_ACT_BPF_PARMS ;
 int TCA_ACT_BPF_TM ;
 int atomic_read (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_act_bpf*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_bpf_dump_bpf_info (struct tcf_bpf*,struct sk_buff*) ;
 int tcf_bpf_dump_ebpf_info (struct tcf_bpf*,struct sk_buff*) ;
 scalar_t__ tcf_bpf_is_ebpf (struct tcf_bpf*) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_bpf* to_bpf (struct tc_action*) ;

__attribute__((used)) static int tcf_bpf_dump(struct sk_buff *skb, struct tc_action *act,
   int bind, int ref)
{
 unsigned char *tp = skb_tail_pointer(skb);
 struct tcf_bpf *prog = to_bpf(act);
 struct tc_act_bpf opt = {
  .index = prog->tcf_index,
  .refcnt = refcount_read(&prog->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&prog->tcf_bindcnt) - bind,
 };
 struct tcf_t tm;
 int ret;

 spin_lock_bh(&prog->tcf_lock);
 opt.action = prog->tcf_action;
 if (nla_put(skb, TCA_ACT_BPF_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 if (tcf_bpf_is_ebpf(prog))
  ret = tcf_bpf_dump_ebpf_info(prog, skb);
 else
  ret = tcf_bpf_dump_bpf_info(prog, skb);
 if (ret)
  goto nla_put_failure;

 tcf_tm_dump(&tm, &prog->tcf_tm);
 if (nla_put_64bit(skb, TCA_ACT_BPF_TM, sizeof(tm), &tm,
     TCA_ACT_BPF_PAD))
  goto nla_put_failure;

 spin_unlock_bh(&prog->tcf_lock);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(&prog->tcf_lock);
 nlmsg_trim(skb, tp);
 return -1;
}

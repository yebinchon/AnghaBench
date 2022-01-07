
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tc_ife {int flags; int action; int bindcnt; int refcnt; int index; } ;
struct tcf_ife_params {struct tc_ife eth_type; struct tc_ife* eth_src; struct tc_ife* eth_dst; int flags; } ;
struct tcf_ife_info {int tcf_lock; int tcf_tm; int params; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int ETH_ALEN ;
 int TCA_IFE_DMAC ;
 int TCA_IFE_PAD ;
 int TCA_IFE_PARMS ;
 int TCA_IFE_SMAC ;
 int TCA_IFE_TM ;
 int TCA_IFE_TYPE ;
 int atomic_read (int *) ;
 scalar_t__ dump_metalist (struct sk_buff*,struct tcf_ife_info*) ;
 int is_zero_ether_addr (struct tc_ife*) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_ife*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 int pr_info (char*) ;
 struct tcf_ife_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_ife_info* to_ife (struct tc_action*) ;

__attribute__((used)) static int tcf_ife_dump(struct sk_buff *skb, struct tc_action *a, int bind,
   int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_ife_info *ife = to_ife(a);
 struct tcf_ife_params *p;
 struct tc_ife opt = {
  .index = ife->tcf_index,
  .refcnt = refcount_read(&ife->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&ife->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&ife->tcf_lock);
 opt.action = ife->tcf_action;
 p = rcu_dereference_protected(ife->params,
          lockdep_is_held(&ife->tcf_lock));
 opt.flags = p->flags;

 if (nla_put(skb, TCA_IFE_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 tcf_tm_dump(&t, &ife->tcf_tm);
 if (nla_put_64bit(skb, TCA_IFE_TM, sizeof(t), &t, TCA_IFE_PAD))
  goto nla_put_failure;

 if (!is_zero_ether_addr(p->eth_dst)) {
  if (nla_put(skb, TCA_IFE_DMAC, ETH_ALEN, p->eth_dst))
   goto nla_put_failure;
 }

 if (!is_zero_ether_addr(p->eth_src)) {
  if (nla_put(skb, TCA_IFE_SMAC, ETH_ALEN, p->eth_src))
   goto nla_put_failure;
 }

 if (nla_put(skb, TCA_IFE_TYPE, 2, &p->eth_type))
  goto nla_put_failure;

 if (dump_metalist(skb, ife)) {

  pr_info("Failed to dump metalist\n");
 }

 spin_unlock_bh(&ife->tcf_lock);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(&ife->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

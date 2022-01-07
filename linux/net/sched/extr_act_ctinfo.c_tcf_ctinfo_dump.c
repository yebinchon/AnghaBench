
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_ctinfo_params {int mode; int cpmarkmask; int dscpstatemask; int dscpmask; int zone; } ;
struct tcf_ctinfo {int tcf_lock; int stats_cpmark_set; int stats_dscp_error; int stats_dscp_set; int tcf_action; int tcf_tm; int params; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_ctinfo {int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 int CTINFO_MODE_CPMARK ;
 int CTINFO_MODE_DSCP ;
 int TCA_CTINFO_ACT ;
 int TCA_CTINFO_PAD ;
 int TCA_CTINFO_PARMS_CPMARK_MASK ;
 int TCA_CTINFO_PARMS_DSCP_MASK ;
 int TCA_CTINFO_PARMS_DSCP_STATEMASK ;
 int TCA_CTINFO_STATS_CPMARK_SET ;
 int TCA_CTINFO_STATS_DSCP_ERROR ;
 int TCA_CTINFO_STATS_DSCP_SET ;
 int TCA_CTINFO_TM ;
 int TCA_CTINFO_ZONE ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_ctinfo*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct tcf_ctinfo_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_ctinfo* to_ctinfo (struct tc_action*) ;

__attribute__((used)) static int tcf_ctinfo_dump(struct sk_buff *skb, struct tc_action *a,
      int bind, int ref)
{
 struct tcf_ctinfo *ci = to_ctinfo(a);
 struct tc_ctinfo opt = {
  .index = ci->tcf_index,
  .refcnt = refcount_read(&ci->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&ci->tcf_bindcnt) - bind,
 };
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_ctinfo_params *cp;
 struct tcf_t t;

 spin_lock_bh(&ci->tcf_lock);
 cp = rcu_dereference_protected(ci->params,
           lockdep_is_held(&ci->tcf_lock));

 tcf_tm_dump(&t, &ci->tcf_tm);
 if (nla_put_64bit(skb, TCA_CTINFO_TM, sizeof(t), &t, TCA_CTINFO_PAD))
  goto nla_put_failure;

 opt.action = ci->tcf_action;
 if (nla_put(skb, TCA_CTINFO_ACT, sizeof(opt), &opt))
  goto nla_put_failure;

 if (nla_put_u16(skb, TCA_CTINFO_ZONE, cp->zone))
  goto nla_put_failure;

 if (cp->mode & CTINFO_MODE_DSCP) {
  if (nla_put_u32(skb, TCA_CTINFO_PARMS_DSCP_MASK,
    cp->dscpmask))
   goto nla_put_failure;
  if (nla_put_u32(skb, TCA_CTINFO_PARMS_DSCP_STATEMASK,
    cp->dscpstatemask))
   goto nla_put_failure;
 }

 if (cp->mode & CTINFO_MODE_CPMARK) {
  if (nla_put_u32(skb, TCA_CTINFO_PARMS_CPMARK_MASK,
    cp->cpmarkmask))
   goto nla_put_failure;
 }

 if (nla_put_u64_64bit(skb, TCA_CTINFO_STATS_DSCP_SET,
         ci->stats_dscp_set, TCA_CTINFO_PAD))
  goto nla_put_failure;

 if (nla_put_u64_64bit(skb, TCA_CTINFO_STATS_DSCP_ERROR,
         ci->stats_dscp_error, TCA_CTINFO_PAD))
  goto nla_put_failure;

 if (nla_put_u64_64bit(skb, TCA_CTINFO_STATS_CPMARK_SET,
         ci->stats_cpmark_set, TCA_CTINFO_PAD))
  goto nla_put_failure;

 spin_unlock_bh(&ci->tcf_lock);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(&ci->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}

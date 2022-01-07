
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_t {int dummy; } ;
struct tcf_mpls_params {scalar_t__ tcfm_label; scalar_t__ tcfm_tc; scalar_t__ tcfm_ttl; scalar_t__ tcfm_bos; int tcfm_proto; int tcfm_action; } ;
struct tcf_mpls {int tcf_lock; int tcf_tm; int mpls_p; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tc_mpls {int m_action; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 scalar_t__ ACT_MPLS_BOS_NOT_SET ;
 scalar_t__ ACT_MPLS_LABEL_NOT_SET ;
 scalar_t__ ACT_MPLS_TC_NOT_SET ;
 int EMSGSIZE ;
 int TCA_MPLS_BOS ;
 int TCA_MPLS_LABEL ;
 int TCA_MPLS_PAD ;
 int TCA_MPLS_PARMS ;
 int TCA_MPLS_PROTO ;
 int TCA_MPLS_TC ;
 int TCA_MPLS_TM ;
 int TCA_MPLS_TTL ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_mpls*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,scalar_t__) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,scalar_t__) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct tcf_mpls_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_mpls* to_mpls (struct tc_action*) ;

__attribute__((used)) static int tcf_mpls_dump(struct sk_buff *skb, struct tc_action *a,
    int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_mpls *m = to_mpls(a);
 struct tcf_mpls_params *p;
 struct tc_mpls opt = {
  .index = m->tcf_index,
  .refcnt = refcount_read(&m->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&m->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&m->tcf_lock);
 opt.action = m->tcf_action;
 p = rcu_dereference_protected(m->mpls_p, lockdep_is_held(&m->tcf_lock));
 opt.m_action = p->tcfm_action;

 if (nla_put(skb, TCA_MPLS_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 if (p->tcfm_label != ACT_MPLS_LABEL_NOT_SET &&
     nla_put_u32(skb, TCA_MPLS_LABEL, p->tcfm_label))
  goto nla_put_failure;

 if (p->tcfm_tc != ACT_MPLS_TC_NOT_SET &&
     nla_put_u8(skb, TCA_MPLS_TC, p->tcfm_tc))
  goto nla_put_failure;

 if (p->tcfm_ttl && nla_put_u8(skb, TCA_MPLS_TTL, p->tcfm_ttl))
  goto nla_put_failure;

 if (p->tcfm_bos != ACT_MPLS_BOS_NOT_SET &&
     nla_put_u8(skb, TCA_MPLS_BOS, p->tcfm_bos))
  goto nla_put_failure;

 if (nla_put_be16(skb, TCA_MPLS_PROTO, p->tcfm_proto))
  goto nla_put_failure;

 tcf_tm_dump(&t, &m->tcf_tm);

 if (nla_put_64bit(skb, TCA_MPLS_TM, sizeof(t), &t, TCA_MPLS_PAD))
  goto nla_put_failure;

 spin_unlock_bh(&m->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&m->tcf_lock);
 nlmsg_trim(skb, b);
 return -EMSGSIZE;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct tcf_vlan_params {scalar_t__ tcfv_action; int tcfv_push_prio; int tcfv_push_proto; int tcfv_push_vid; } ;
struct tcf_vlan {int tcf_lock; int tcf_tm; int vlan_p; int tcf_action; int tcf_bindcnt; int tcf_refcnt; int tcf_index; } ;
struct tcf_t {int dummy; } ;
struct tc_vlan {scalar_t__ v_action; int action; int bindcnt; int refcnt; int index; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
typedef int opt ;


 scalar_t__ TCA_VLAN_ACT_MODIFY ;
 scalar_t__ TCA_VLAN_ACT_PUSH ;
 int TCA_VLAN_PAD ;
 int TCA_VLAN_PARMS ;
 int TCA_VLAN_PUSH_VLAN_ID ;
 int TCA_VLAN_PUSH_VLAN_PRIORITY ;
 int TCA_VLAN_PUSH_VLAN_PROTOCOL ;
 int TCA_VLAN_TM ;
 int atomic_read (int *) ;
 int lockdep_is_held (int *) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_vlan*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_be16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u16 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 struct tcf_vlan_params* rcu_dereference_protected (int ,int ) ;
 int refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_vlan* to_vlan (struct tc_action*) ;

__attribute__((used)) static int tcf_vlan_dump(struct sk_buff *skb, struct tc_action *a,
    int bind, int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_vlan *v = to_vlan(a);
 struct tcf_vlan_params *p;
 struct tc_vlan opt = {
  .index = v->tcf_index,
  .refcnt = refcount_read(&v->tcf_refcnt) - ref,
  .bindcnt = atomic_read(&v->tcf_bindcnt) - bind,
 };
 struct tcf_t t;

 spin_lock_bh(&v->tcf_lock);
 opt.action = v->tcf_action;
 p = rcu_dereference_protected(v->vlan_p, lockdep_is_held(&v->tcf_lock));
 opt.v_action = p->tcfv_action;
 if (nla_put(skb, TCA_VLAN_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 if ((p->tcfv_action == TCA_VLAN_ACT_PUSH ||
      p->tcfv_action == TCA_VLAN_ACT_MODIFY) &&
     (nla_put_u16(skb, TCA_VLAN_PUSH_VLAN_ID, p->tcfv_push_vid) ||
      nla_put_be16(skb, TCA_VLAN_PUSH_VLAN_PROTOCOL,
     p->tcfv_push_proto) ||
      (nla_put_u8(skb, TCA_VLAN_PUSH_VLAN_PRIORITY,
           p->tcfv_push_prio))))
  goto nla_put_failure;

 tcf_tm_dump(&t, &v->tcf_tm);
 if (nla_put_64bit(skb, TCA_VLAN_TM, sizeof(t), &t, TCA_VLAN_PAD))
  goto nla_put_failure;
 spin_unlock_bh(&v->tcf_lock);

 return skb->len;

nla_put_failure:
 spin_unlock_bh(&v->tcf_lock);
 nlmsg_trim(skb, b);
 return -1;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int tm ;
struct TYPE_8__ {int name; } ;
struct TYPE_9__ {TYPE_1__ user; } ;
struct xt_entry_target {TYPE_2__ u; scalar_t__ refcnt; scalar_t__ bindcnt; } ;
struct tcf_t {int dummy; } ;
struct tcf_ipt {int tcf_lock; int tcf_tm; int tcfi_tname; int tcfi_hook; int tcf_index; TYPE_7__* tcfi_t; int tcf_refcnt; int tcf_bindcnt; } ;
struct tc_cnt {TYPE_2__ u; scalar_t__ refcnt; scalar_t__ bindcnt; } ;
struct tc_action {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_12__ {int target_size; } ;
struct TYPE_11__ {TYPE_3__* target; } ;
struct TYPE_13__ {TYPE_5__ user; TYPE_4__ kernel; } ;
struct TYPE_14__ {TYPE_6__ u; } ;
struct TYPE_10__ {int name; } ;


 int GFP_ATOMIC ;
 int TCA_IPT_CNT ;
 int TCA_IPT_HOOK ;
 int TCA_IPT_INDEX ;
 int TCA_IPT_PAD ;
 int TCA_IPT_TABLE ;
 int TCA_IPT_TARG ;
 int TCA_IPT_TM ;
 scalar_t__ atomic_read (int *) ;
 int kfree (struct xt_entry_target*) ;
 struct xt_entry_target* kmemdup (TYPE_7__*,int,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct xt_entry_target*) ;
 scalar_t__ nla_put_64bit (struct sk_buff*,int ,int,struct tcf_t*,int ) ;
 scalar_t__ nla_put_string (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 int nlmsg_trim (struct sk_buff*,unsigned char*) ;
 scalar_t__ refcount_read (int *) ;
 unsigned char* skb_tail_pointer (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strcpy (int ,int ) ;
 int tcf_tm_dump (struct tcf_t*,int *) ;
 struct tcf_ipt* to_ipt (struct tc_action*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int tcf_ipt_dump(struct sk_buff *skb, struct tc_action *a, int bind,
   int ref)
{
 unsigned char *b = skb_tail_pointer(skb);
 struct tcf_ipt *ipt = to_ipt(a);
 struct xt_entry_target *t;
 struct tcf_t tm;
 struct tc_cnt c;






 spin_lock_bh(&ipt->tcf_lock);
 t = kmemdup(ipt->tcfi_t, ipt->tcfi_t->u.user.target_size, GFP_ATOMIC);
 if (unlikely(!t))
  goto nla_put_failure;

 c.bindcnt = atomic_read(&ipt->tcf_bindcnt) - bind;
 c.refcnt = refcount_read(&ipt->tcf_refcnt) - ref;
 strcpy(t->u.user.name, ipt->tcfi_t->u.kernel.target->name);

 if (nla_put(skb, TCA_IPT_TARG, ipt->tcfi_t->u.user.target_size, t) ||
     nla_put_u32(skb, TCA_IPT_INDEX, ipt->tcf_index) ||
     nla_put_u32(skb, TCA_IPT_HOOK, ipt->tcfi_hook) ||
     nla_put(skb, TCA_IPT_CNT, sizeof(struct tc_cnt), &c) ||
     nla_put_string(skb, TCA_IPT_TABLE, ipt->tcfi_tname))
  goto nla_put_failure;

 tcf_tm_dump(&tm, &ipt->tcf_tm);
 if (nla_put_64bit(skb, TCA_IPT_TM, sizeof(tm), &tm, TCA_IPT_PAD))
  goto nla_put_failure;

 spin_unlock_bh(&ipt->tcf_lock);
 kfree(t);
 return skb->len;

nla_put_failure:
 spin_unlock_bh(&ipt->tcf_lock);
 nlmsg_trim(skb, b);
 kfree(t);
 return -1;
}

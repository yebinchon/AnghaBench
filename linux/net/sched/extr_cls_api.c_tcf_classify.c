
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcf_result {struct tcf_proto* goto_tp; } ;
struct tcf_proto {scalar_t__ protocol; int (* classify ) (struct sk_buff*,struct tcf_proto const*,struct tcf_result*) ;int prio; TYPE_2__* chain; int next; } ;
struct tc_skb_ext {int chain; } ;
struct sk_buff {int dummy; } ;
typedef scalar_t__ __be16 ;
struct TYPE_4__ {TYPE_1__* block; } ;
struct TYPE_3__ {int index; } ;


 int ETH_P_ALL ;
 int TC_ACT_EXT_CMP (int,int ) ;
 int TC_ACT_EXT_VAL_MASK ;
 int TC_ACT_GOTO_CHAIN ;
 int TC_ACT_RECLASSIFY ;
 int TC_ACT_SHOT ;
 int TC_ACT_UNSPEC ;
 int TC_SKB_EXT ;
 scalar_t__ WARN_ON_ONCE (int) ;
 scalar_t__ htons (int ) ;
 int net_notice_ratelimited (char*,int ,int,int ) ;
 int ntohs (scalar_t__) ;
 struct tcf_proto* rcu_dereference_bh (int ) ;
 struct tc_skb_ext* skb_ext_add (struct sk_buff*,int ) ;
 int stub1 (struct sk_buff*,struct tcf_proto const*,struct tcf_result*) ;
 scalar_t__ tc_skb_protocol (struct sk_buff*) ;
 scalar_t__ unlikely (int) ;

int tcf_classify(struct sk_buff *skb, const struct tcf_proto *tp,
   struct tcf_result *res, bool compat_mode)
{
 for (; tp; tp = rcu_dereference_bh(tp->next)) {
  __be16 protocol = tc_skb_protocol(skb);
  int err;

  if (tp->protocol != protocol &&
      tp->protocol != htons(ETH_P_ALL))
   continue;

  err = tp->classify(skb, tp, res);
  if (err >= 0)
   return err;
 }

 return TC_ACT_UNSPEC;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int dummy; } ;
struct tcf_proto {int root; } ;
struct sk_buff {int dummy; } ;
struct cls_mall_head {int exts; TYPE_1__* pf; struct tcf_result res; int flags; } ;
struct TYPE_2__ {int rhit; } ;


 int __this_cpu_inc (int ) ;
 struct cls_mall_head* rcu_dereference_bh (int ) ;
 scalar_t__ tc_skip_sw (int ) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int mall_classify(struct sk_buff *skb, const struct tcf_proto *tp,
    struct tcf_result *res)
{
 struct cls_mall_head *head = rcu_dereference_bh(tp->root);

 if (unlikely(!head))
  return -1;

 if (tc_skip_sw(head->flags))
  return -1;

 *res = head->res;
 __this_cpu_inc(head->pf->rhit);
 return tcf_exts_exec(skb, &head->exts, res);
}

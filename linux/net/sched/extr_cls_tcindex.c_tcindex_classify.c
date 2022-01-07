
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcf_result {int classid; scalar_t__ class; } ;
struct tcindex_filter_result {int exts; struct tcf_result res; } ;
struct tcindex_data {int mask; int shift; int fall_through; } ;
struct tcf_proto {TYPE_1__* chain; int root; } ;
struct sk_buff {int tc_index; } ;
struct Qdisc {int handle; } ;
struct TYPE_2__ {int block; } ;


 int TC_H_MAJ (int ) ;
 int TC_H_MAKE (int ,int) ;
 int pr_debug (char*,struct sk_buff*,...) ;
 struct tcindex_data* rcu_dereference_bh (int ) ;
 struct Qdisc* tcf_block_q (int ) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 struct tcindex_filter_result* tcindex_lookup (struct tcindex_data*,int) ;

__attribute__((used)) static int tcindex_classify(struct sk_buff *skb, const struct tcf_proto *tp,
       struct tcf_result *res)
{
 struct tcindex_data *p = rcu_dereference_bh(tp->root);
 struct tcindex_filter_result *f;
 int key = (skb->tc_index & p->mask) >> p->shift;

 pr_debug("tcindex_classify(skb %p,tp %p,res %p),p %p\n",
   skb, tp, res, p);

 f = tcindex_lookup(p, key);
 if (!f) {
  struct Qdisc *q = tcf_block_q(tp->chain->block);

  if (!p->fall_through)
   return -1;
  res->classid = TC_H_MAKE(TC_H_MAJ(q->handle), key);
  res->class = 0;
  pr_debug("alg 0x%x\n", res->classid);
  return 0;
 }
 *res = f->res;
 pr_debug("map 0x%x\n", res->classid);

 return tcf_exts_exec(skb, &f->exts, res);
}

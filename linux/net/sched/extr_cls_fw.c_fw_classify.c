
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcf_result {int classid; scalar_t__ class; } ;
struct tcf_proto {TYPE_1__* chain; int root; } ;
struct sk_buff {int mark; } ;
struct fw_head {int mask; int * ht; } ;
struct fw_filter {int id; int exts; int ifindex; struct tcf_result res; int next; } ;
struct Qdisc {int handle; } ;
struct TYPE_2__ {int block; } ;


 scalar_t__ TC_H_MAJ (int) ;
 size_t fw_hash (int) ;
 void* rcu_dereference_bh (int ) ;
 struct Qdisc* tcf_block_q (int ) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 int tcf_match_indev (struct sk_buff*,int ) ;

__attribute__((used)) static int fw_classify(struct sk_buff *skb, const struct tcf_proto *tp,
         struct tcf_result *res)
{
 struct fw_head *head = rcu_dereference_bh(tp->root);
 struct fw_filter *f;
 int r;
 u32 id = skb->mark;

 if (head != ((void*)0)) {
  id &= head->mask;

  for (f = rcu_dereference_bh(head->ht[fw_hash(id)]); f;
       f = rcu_dereference_bh(f->next)) {
   if (f->id == id) {
    *res = f->res;
    if (!tcf_match_indev(skb, f->ifindex))
     continue;
    r = tcf_exts_exec(skb, &f->exts, res);
    if (r < 0)
     continue;

    return r;
   }
  }
 } else {
  struct Qdisc *q = tcf_block_q(tp->chain->block);


  if (id && (TC_H_MAJ(id) == 0 ||
      !(TC_H_MAJ(id ^ q->handle)))) {
   res->classid = id;
   res->class = 0;
   return 0;
  }
 }

 return -1;
}

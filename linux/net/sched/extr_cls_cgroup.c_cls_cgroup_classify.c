
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tcf_result {scalar_t__ class; scalar_t__ classid; } ;
struct tcf_proto {int root; } ;
struct sk_buff {int dummy; } ;
struct cls_cgroup_head {int exts; int ematches; } ;


 struct cls_cgroup_head* rcu_dereference_bh (int ) ;
 scalar_t__ task_get_classid (struct sk_buff*) ;
 int tcf_em_tree_match (struct sk_buff*,int *,int *) ;
 int tcf_exts_exec (struct sk_buff*,int *,struct tcf_result*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int cls_cgroup_classify(struct sk_buff *skb, const struct tcf_proto *tp,
          struct tcf_result *res)
{
 struct cls_cgroup_head *head = rcu_dereference_bh(tp->root);
 u32 classid = task_get_classid(skb);

 if (unlikely(!head))
  return -1;
 if (!classid)
  return -1;
 if (!tcf_em_tree_match(skb, &head->ematches, ((void*)0)))
  return -1;

 res->classid = classid;
 res->class = 0;

 return tcf_exts_exec(skb, &head->exts, res);
}

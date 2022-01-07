
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcmsg {int tcm_handle; } ;
struct tcf_proto {int root; } ;
struct sk_buff {int len; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct cls_cgroup_head {int exts; int ematches; int handle; } ;


 int TCA_CGROUP_EMATCHES ;
 int TCA_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 struct cls_cgroup_head* rtnl_dereference (int ) ;
 scalar_t__ tcf_em_tree_dump (struct sk_buff*,int *,int ) ;
 scalar_t__ tcf_exts_dump (struct sk_buff*,int *) ;
 scalar_t__ tcf_exts_dump_stats (struct sk_buff*,int *) ;

__attribute__((used)) static int cls_cgroup_dump(struct net *net, struct tcf_proto *tp, void *fh,
      struct sk_buff *skb, struct tcmsg *t, bool rtnl_held)
{
 struct cls_cgroup_head *head = rtnl_dereference(tp->root);
 struct nlattr *nest;

 t->tcm_handle = head->handle;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 if (tcf_exts_dump(skb, &head->exts) < 0 ||
     tcf_em_tree_dump(skb, &head->ematches, TCA_CGROUP_EMATCHES) < 0)
  goto nla_put_failure;

 nla_nest_end(skb, nest);

 if (tcf_exts_dump_stats(skb, &head->exts) < 0)
  goto nla_put_failure;

 return skb->len;

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}

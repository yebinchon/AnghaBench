
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct nf_conntrack_tuple {int dummy; } ;


 scalar_t__ ctnetlink_dump_tuples (struct sk_buff*,struct nf_conntrack_tuple const*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start (struct sk_buff*,int ) ;

__attribute__((used)) static int ctnetlink_exp_dump_tuple(struct sk_buff *skb,
        const struct nf_conntrack_tuple *tuple,
        u32 type)
{
 struct nlattr *nest_parms;

 nest_parms = nla_nest_start(skb, type);
 if (!nest_parms)
  goto nla_put_failure;
 if (ctnetlink_dump_tuples(skb, tuple) < 0)
  goto nla_put_failure;
 nla_nest_end(skb, nest_parms);

 return 0;

nla_put_failure:
 return -1;
}

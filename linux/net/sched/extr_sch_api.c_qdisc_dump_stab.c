
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct qdisc_size_table {int szopts; } ;
struct nlattr {int dummy; } ;


 int TCA_STAB ;
 int TCA_STAB_BASE ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,int *) ;

__attribute__((used)) static int qdisc_dump_stab(struct sk_buff *skb, struct qdisc_size_table *stab)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, TCA_STAB);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if (nla_put(skb, TCA_STAB_BASE, sizeof(stab->szopts), &stab->szopts))
  goto nla_put_failure;
 nla_nest_end(skb, nest);

 return skb->len;

nla_put_failure:
 return -1;
}

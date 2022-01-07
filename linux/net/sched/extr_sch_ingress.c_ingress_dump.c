
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;


 int TCA_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;

__attribute__((used)) static int ingress_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}

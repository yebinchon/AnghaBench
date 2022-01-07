
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_skbprio_qopt {int limit; } ;
struct sk_buff {int len; } ;
struct Qdisc {int limit; } ;
typedef int opt ;


 int TCA_OPTIONS ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_skbprio_qopt*) ;

__attribute__((used)) static int skbprio_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct tc_skbprio_qopt opt;

 opt.limit = sch->limit;

 if (nla_put(skb, TCA_OPTIONS, sizeof(opt), &opt))
  return -1;

 return skb->len;
}

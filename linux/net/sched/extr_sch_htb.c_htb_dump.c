
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_htb_glob {scalar_t__ debug; int defcls; int rate2quantum; int version; int direct_pkts; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct htb_sched {int direct_qlen; int defcls; int rate2quantum; int direct_pkts; int overlimits; } ;
struct TYPE_2__ {int overlimits; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef int gopt ;


 int HTB_VER ;
 int TCA_HTB_DIRECT_QLEN ;
 int TCA_HTB_INIT ;
 int TCA_OPTIONS ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_htb_glob*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 struct htb_sched* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int htb_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct htb_sched *q = qdisc_priv(sch);
 struct nlattr *nest;
 struct tc_htb_glob gopt;

 sch->qstats.overlimits = q->overlimits;




 gopt.direct_pkts = q->direct_pkts;
 gopt.version = HTB_VER;
 gopt.rate2quantum = q->rate2quantum;
 gopt.defcls = q->defcls;
 gopt.debug = 0;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;
 if (nla_put(skb, TCA_HTB_INIT, sizeof(gopt), &gopt) ||
     nla_put_u32(skb, TCA_HTB_DIRECT_QLEN, q->direct_qlen))
  goto nla_put_failure;

 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}

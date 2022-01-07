
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_etf_qopt {int flags; int clockid; int delta; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct etf_sched_data {scalar_t__ skip_sock_check; scalar_t__ deadline_mode; scalar_t__ offload; int clockid; int delta; } ;
struct Qdisc {int dummy; } ;
typedef int opt ;


 int TCA_ETF_PARMS ;
 int TCA_OPTIONS ;
 int TC_ETF_DEADLINE_MODE_ON ;
 int TC_ETF_OFFLOAD_ON ;
 int TC_ETF_SKIP_SOCK_CHECK ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_etf_qopt*) ;
 struct etf_sched_data* qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static int etf_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct etf_sched_data *q = qdisc_priv(sch);
 struct tc_etf_qopt opt = { };
 struct nlattr *nest;

 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (!nest)
  goto nla_put_failure;

 opt.delta = q->delta;
 opt.clockid = q->clockid;
 if (q->offload)
  opt.flags |= TC_ETF_OFFLOAD_ON;

 if (q->deadline_mode)
  opt.flags |= TC_ETF_DEADLINE_MODE_ON;

 if (q->skip_sock_check)
  opt.flags |= TC_ETF_SKIP_SOCK_CHECK;

 if (nla_put(skb, TCA_ETF_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;

 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}

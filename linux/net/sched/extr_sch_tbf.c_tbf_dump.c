
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct tc_tbf_qopt {void* buffer; void* mtu; int peakrate; int rate; int limit; } ;
struct TYPE_8__ {unsigned long long rate_bytes_ps; } ;
struct tbf_sched_data {TYPE_4__ peak; TYPE_4__ rate; int buffer; int mtu; int limit; TYPE_3__* qdisc; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef int opt ;
struct TYPE_6__ {int backlog; } ;
struct TYPE_7__ {TYPE_2__ qstats; } ;


 void* PSCHED_NS2TICKS (int ) ;
 int TCA_OPTIONS ;
 int TCA_TBF_PAD ;
 int TCA_TBF_PARMS ;
 int TCA_TBF_PRATE64 ;
 int TCA_TBF_RATE64 ;
 int memset (int *,int ,int) ;
 int nla_nest_cancel (struct sk_buff*,struct nlattr*) ;
 int nla_nest_end (struct sk_buff*,struct nlattr*) ;
 struct nlattr* nla_nest_start_noflag (struct sk_buff*,int ) ;
 scalar_t__ nla_put (struct sk_buff*,int ,int,struct tc_tbf_qopt*) ;
 scalar_t__ nla_put_u64_64bit (struct sk_buff*,int ,unsigned long long,int ) ;
 int psched_ratecfg_getrate (int *,TYPE_4__*) ;
 struct tbf_sched_data* qdisc_priv (struct Qdisc*) ;
 scalar_t__ tbf_peak_present (struct tbf_sched_data*) ;

__attribute__((used)) static int tbf_dump(struct Qdisc *sch, struct sk_buff *skb)
{
 struct tbf_sched_data *q = qdisc_priv(sch);
 struct nlattr *nest;
 struct tc_tbf_qopt opt;

 sch->qstats.backlog = q->qdisc->qstats.backlog;
 nest = nla_nest_start_noflag(skb, TCA_OPTIONS);
 if (nest == ((void*)0))
  goto nla_put_failure;

 opt.limit = q->limit;
 psched_ratecfg_getrate(&opt.rate, &q->rate);
 if (tbf_peak_present(q))
  psched_ratecfg_getrate(&opt.peakrate, &q->peak);
 else
  memset(&opt.peakrate, 0, sizeof(opt.peakrate));
 opt.mtu = PSCHED_NS2TICKS(q->mtu);
 opt.buffer = PSCHED_NS2TICKS(q->buffer);
 if (nla_put(skb, TCA_TBF_PARMS, sizeof(opt), &opt))
  goto nla_put_failure;
 if (q->rate.rate_bytes_ps >= (1ULL << 32) &&
     nla_put_u64_64bit(skb, TCA_TBF_RATE64, q->rate.rate_bytes_ps,
         TCA_TBF_PAD))
  goto nla_put_failure;
 if (tbf_peak_present(q) &&
     q->peak.rate_bytes_ps >= (1ULL << 32) &&
     nla_put_u64_64bit(skb, TCA_TBF_PRATE64, q->peak.rate_bytes_ps,
         TCA_TBF_PAD))
  goto nla_put_failure;

 return nla_nest_end(skb, nest);

nla_put_failure:
 nla_nest_cancel(skb, nest);
 return -1;
}

#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tc_tbf_qopt {void* buffer; void* mtu; int /*<<< orphan*/  peakrate; int /*<<< orphan*/  rate; int /*<<< orphan*/  limit; } ;
struct TYPE_8__ {unsigned long long rate_bytes_ps; } ;
struct tbf_sched_data {TYPE_4__ peak; TYPE_4__ rate; int /*<<< orphan*/  buffer; int /*<<< orphan*/  mtu; int /*<<< orphan*/  limit; TYPE_3__* qdisc; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_6__ {int /*<<< orphan*/  backlog; } ;
struct TYPE_7__ {TYPE_2__ qstats; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_TBF_PAD ; 
 int /*<<< orphan*/  TCA_TBF_PARMS ; 
 int /*<<< orphan*/  TCA_TBF_PRATE64 ; 
 int /*<<< orphan*/  TCA_TBF_RATE64 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_tbf_qopt*) ; 
 scalar_t__ FUNC6 (struct sk_buff*,int /*<<< orphan*/ ,unsigned long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 struct tbf_sched_data* FUNC8 (struct Qdisc*) ; 
 scalar_t__ FUNC9 (struct tbf_sched_data*) ; 

__attribute__((used)) static int FUNC10(struct Qdisc *sch, struct sk_buff *skb)
{
	struct tbf_sched_data *q = FUNC8(sch);
	struct nlattr *nest;
	struct tc_tbf_qopt opt;

	sch->qstats.backlog = q->qdisc->qstats.backlog;
	nest = FUNC4(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;

	opt.limit = q->limit;
	FUNC7(&opt.rate, &q->rate);
	if (FUNC9(q))
		FUNC7(&opt.peakrate, &q->peak);
	else
		FUNC1(&opt.peakrate, 0, sizeof(opt.peakrate));
	opt.mtu = FUNC0(q->mtu);
	opt.buffer = FUNC0(q->buffer);
	if (FUNC5(skb, TCA_TBF_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;
	if (q->rate.rate_bytes_ps >= (1ULL << 32) &&
	    FUNC6(skb, TCA_TBF_RATE64, q->rate.rate_bytes_ps,
			      TCA_TBF_PAD))
		goto nla_put_failure;
	if (FUNC9(q) &&
	    q->peak.rate_bytes_ps >= (1ULL << 32) &&
	    FUNC6(skb, TCA_TBF_PRATE64, q->peak.rate_bytes_ps,
			      TCA_TBF_PAD))
		goto nla_put_failure;

	return FUNC3(skb, nest);

nla_put_failure:
	FUNC2(skb, nest);
	return -1;
}
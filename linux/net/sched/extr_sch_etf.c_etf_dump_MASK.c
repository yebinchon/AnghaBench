#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tc_etf_qopt {int /*<<< orphan*/  flags; int /*<<< orphan*/  clockid; int /*<<< orphan*/  delta; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct etf_sched_data {scalar_t__ skip_sock_check; scalar_t__ deadline_mode; scalar_t__ offload; int /*<<< orphan*/  clockid; int /*<<< orphan*/  delta; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int /*<<< orphan*/  TCA_ETF_PARMS ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TC_ETF_DEADLINE_MODE_ON ; 
 int /*<<< orphan*/  TC_ETF_OFFLOAD_ON ; 
 int /*<<< orphan*/  TC_ETF_SKIP_SOCK_CHECK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_etf_qopt*) ; 
 struct etf_sched_data* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, struct sk_buff *skb)
{
	struct etf_sched_data *q = FUNC4(sch);
	struct tc_etf_qopt opt = { };
	struct nlattr *nest;

	nest = FUNC2(skb, TCA_OPTIONS);
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

	if (FUNC3(skb, TCA_ETF_PARMS, sizeof(opt), &opt))
		goto nla_put_failure;

	return FUNC1(skb, nest);

nla_put_failure:
	FUNC0(skb, nest);
	return -1;
}
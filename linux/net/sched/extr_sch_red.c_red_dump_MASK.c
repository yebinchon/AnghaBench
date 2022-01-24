#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tc_red_qopt {int qth_min; int qth_max; int Wlog; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  flags; int /*<<< orphan*/  limit; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int qth_min; int Wlog; int qth_max; int /*<<< orphan*/  max_P; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; } ;
struct red_sched_data {TYPE_1__ parms; int /*<<< orphan*/  flags; int /*<<< orphan*/  limit; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_RED_MAX_P ; 
 int /*<<< orphan*/  TCA_RED_PARMS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_red_qopt*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct red_sched_data* FUNC5 (struct Qdisc*) ; 
 int FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, struct sk_buff *skb)
{
	struct red_sched_data *q = FUNC5(sch);
	struct nlattr *opts = NULL;
	struct tc_red_qopt opt = {
		.limit		= q->limit,
		.flags		= q->flags,
		.qth_min	= q->parms.qth_min >> q->parms.Wlog,
		.qth_max	= q->parms.qth_max >> q->parms.Wlog,
		.Wlog		= q->parms.Wlog,
		.Plog		= q->parms.Plog,
		.Scell_log	= q->parms.Scell_log,
	};
	int err;

	err = FUNC6(sch);
	if (err)
		goto nla_put_failure;

	opts = FUNC2(skb, TCA_OPTIONS);
	if (opts == NULL)
		goto nla_put_failure;
	if (FUNC3(skb, TCA_RED_PARMS, sizeof(opt), &opt) ||
	    FUNC4(skb, TCA_RED_MAX_P, q->parms.max_P))
		goto nla_put_failure;
	return FUNC1(skb, opts);

nla_put_failure:
	FUNC0(skb, opts);
	return -EMSGSIZE;
}
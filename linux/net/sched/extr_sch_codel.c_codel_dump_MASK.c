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
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct TYPE_2__ {scalar_t__ target; scalar_t__ interval; scalar_t__ ce_threshold; int /*<<< orphan*/  ecn; } ;
struct codel_sched_data {TYPE_1__ params; } ;
struct Qdisc {int /*<<< orphan*/  limit; } ;

/* Variables and functions */
 scalar_t__ CODEL_DISABLED_THRESHOLD ; 
 int /*<<< orphan*/  TCA_CODEL_CE_THRESHOLD ; 
 int /*<<< orphan*/  TCA_CODEL_ECN ; 
 int /*<<< orphan*/  TCA_CODEL_INTERVAL ; 
 int /*<<< orphan*/  TCA_CODEL_LIMIT ; 
 int /*<<< orphan*/  TCA_CODEL_TARGET ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct nlattr*) ; 
 int FUNC2 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC3 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct codel_sched_data* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct sk_buff *skb)
{
	struct codel_sched_data *q = FUNC5(sch);
	struct nlattr *opts;

	opts = FUNC3(skb, TCA_OPTIONS);
	if (opts == NULL)
		goto nla_put_failure;

	if (FUNC4(skb, TCA_CODEL_TARGET,
			FUNC0(q->params.target)) ||
	    FUNC4(skb, TCA_CODEL_LIMIT,
			sch->limit) ||
	    FUNC4(skb, TCA_CODEL_INTERVAL,
			FUNC0(q->params.interval)) ||
	    FUNC4(skb, TCA_CODEL_ECN,
			q->params.ecn))
		goto nla_put_failure;
	if (q->params.ce_threshold != CODEL_DISABLED_THRESHOLD &&
	    FUNC4(skb, TCA_CODEL_CE_THRESHOLD,
			FUNC0(q->params.ce_threshold)))
		goto nla_put_failure;
	return FUNC2(skb, opts);

nla_put_failure:
	FUNC1(skb, opts);
	return -1;
}
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
typedef  int u32 ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int alpha; int beta; int ecn; int bytemode; int /*<<< orphan*/  tupdate; int /*<<< orphan*/  target; } ;
struct pie_sched_data {TYPE_1__ params; } ;
struct nlattr {int dummy; } ;
struct Qdisc {int limit; } ;

/* Variables and functions */
 int NSEC_PER_USEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_PIE_ALPHA ; 
 int /*<<< orphan*/  TCA_PIE_BETA ; 
 int /*<<< orphan*/  TCA_PIE_BYTEMODE ; 
 int /*<<< orphan*/  TCA_PIE_ECN ; 
 int /*<<< orphan*/  TCA_PIE_LIMIT ; 
 int /*<<< orphan*/  TCA_PIE_TARGET ; 
 int /*<<< orphan*/  TCA_PIE_TUPDATE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct nlattr*) ; 
 int FUNC3 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 struct pie_sched_data* FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, struct sk_buff *skb)
{
	struct pie_sched_data *q = FUNC6(sch);
	struct nlattr *opts;

	opts = FUNC4(skb, TCA_OPTIONS);
	if (!opts)
		goto nla_put_failure;

	/* convert target from pschedtime to us */
	if (FUNC5(skb, TCA_PIE_TARGET,
			((u32)FUNC0(q->params.target)) /
			NSEC_PER_USEC) ||
	    FUNC5(skb, TCA_PIE_LIMIT, sch->limit) ||
	    FUNC5(skb, TCA_PIE_TUPDATE,
			FUNC1(q->params.tupdate)) ||
	    FUNC5(skb, TCA_PIE_ALPHA, q->params.alpha) ||
	    FUNC5(skb, TCA_PIE_BETA, q->params.beta) ||
	    FUNC5(skb, TCA_PIE_ECN, q->params.ecn) ||
	    FUNC5(skb, TCA_PIE_BYTEMODE, q->params.bytemode))
		goto nla_put_failure;

	return FUNC3(skb, opts);

nla_put_failure:
	FUNC2(skb, opts);
	return -1;
}
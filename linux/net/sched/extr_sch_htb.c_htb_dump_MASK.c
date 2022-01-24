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
struct tc_htb_glob {scalar_t__ debug; int /*<<< orphan*/  defcls; int /*<<< orphan*/  rate2quantum; int /*<<< orphan*/  version; int /*<<< orphan*/  direct_pkts; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;
struct htb_sched {int /*<<< orphan*/  direct_qlen; int /*<<< orphan*/  defcls; int /*<<< orphan*/  rate2quantum; int /*<<< orphan*/  direct_pkts; int /*<<< orphan*/  overlimits; } ;
struct TYPE_2__ {int /*<<< orphan*/  overlimits; } ;
struct Qdisc {TYPE_1__ qstats; } ;
typedef  int /*<<< orphan*/  gopt ;

/* Variables and functions */
 int /*<<< orphan*/  HTB_VER ; 
 int /*<<< orphan*/  TCA_HTB_DIRECT_QLEN ; 
 int /*<<< orphan*/  TCA_HTB_INIT ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct nlattr*) ; 
 int FUNC1 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_htb_glob*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct htb_sched* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, struct sk_buff *skb)
{
	struct htb_sched *q = FUNC5(sch);
	struct nlattr *nest;
	struct tc_htb_glob gopt;

	sch->qstats.overlimits = q->overlimits;
	/* Its safe to not acquire qdisc lock. As we hold RTNL,
	 * no change can happen on the qdisc parameters.
	 */

	gopt.direct_pkts = q->direct_pkts;
	gopt.version = HTB_VER;
	gopt.rate2quantum = q->rate2quantum;
	gopt.defcls = q->defcls;
	gopt.debug = 0;

	nest = FUNC2(skb, TCA_OPTIONS);
	if (nest == NULL)
		goto nla_put_failure;
	if (FUNC3(skb, TCA_HTB_INIT, sizeof(gopt), &gopt) ||
	    FUNC4(skb, TCA_HTB_DIRECT_QLEN, q->direct_qlen))
		goto nla_put_failure;

	return FUNC1(skb, nest);

nla_put_failure:
	FUNC0(skb, nest);
	return -1;
}
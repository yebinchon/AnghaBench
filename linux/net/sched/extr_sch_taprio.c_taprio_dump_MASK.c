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
struct tc_mqprio_qopt {unsigned int num_tc; int /*<<< orphan*/ * offset; int /*<<< orphan*/ * count; int /*<<< orphan*/  prio_tc_map; int /*<<< orphan*/  member_0; } ;
struct taprio_sched {scalar_t__ txtime_delay; scalar_t__ flags; int /*<<< orphan*/  clockid; int /*<<< orphan*/  admin_sched; int /*<<< orphan*/  oper_sched; } ;
struct sk_buff {int dummy; } ;
struct sched_gate_list {int dummy; } ;
struct nlattr {int dummy; } ;
struct net_device {TYPE_1__* tc_to_txq; int /*<<< orphan*/  prio_tc_map; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  opt ;
struct TYPE_2__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  TCA_OPTIONS ; 
 int /*<<< orphan*/  TCA_TAPRIO_ATTR_ADMIN_SCHED ; 
 int /*<<< orphan*/  TCA_TAPRIO_ATTR_FLAGS ; 
 int /*<<< orphan*/  TCA_TAPRIO_ATTR_PRIOMAP ; 
 int /*<<< orphan*/  TCA_TAPRIO_ATTR_SCHED_CLOCKID ; 
 int /*<<< orphan*/  TCA_TAPRIO_ATTR_TXTIME_DELAY ; 
 scalar_t__ FUNC1 (struct sk_buff*,struct sched_gate_list*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,struct nlattr*) ; 
 int FUNC5 (struct sk_buff*,struct nlattr*) ; 
 struct nlattr* FUNC6 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct sk_buff*,int /*<<< orphan*/ ,int,struct tc_mqprio_qopt*) ; 
 scalar_t__ FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct net_device* FUNC10 (struct Qdisc*) ; 
 struct taprio_sched* FUNC11 (struct Qdisc*) ; 
 struct sched_gate_list* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(struct Qdisc *sch, struct sk_buff *skb)
{
	struct taprio_sched *q = FUNC11(sch);
	struct net_device *dev = FUNC10(sch);
	struct sched_gate_list *oper, *admin;
	struct tc_mqprio_qopt opt = { 0 };
	struct nlattr *nest, *sched_nest;
	unsigned int i;

	FUNC13();
	oper = FUNC12(q->oper_sched);
	admin = FUNC12(q->admin_sched);

	opt.num_tc = FUNC3(dev);
	FUNC2(opt.prio_tc_map, dev->prio_tc_map, sizeof(opt.prio_tc_map));

	for (i = 0; i < FUNC3(dev); i++) {
		opt.count[i] = dev->tc_to_txq[i].count;
		opt.offset[i] = dev->tc_to_txq[i].offset;
	}

	nest = FUNC6(skb, TCA_OPTIONS);
	if (!nest)
		goto start_error;

	if (FUNC7(skb, TCA_TAPRIO_ATTR_PRIOMAP, sizeof(opt), &opt))
		goto options_error;

	if (!FUNC0(q->flags) &&
	    FUNC8(skb, TCA_TAPRIO_ATTR_SCHED_CLOCKID, q->clockid))
		goto options_error;

	if (q->flags && FUNC9(skb, TCA_TAPRIO_ATTR_FLAGS, q->flags))
		goto options_error;

	if (q->txtime_delay &&
	    FUNC9(skb, TCA_TAPRIO_ATTR_TXTIME_DELAY, q->txtime_delay))
		goto options_error;

	if (oper && FUNC1(skb, oper))
		goto options_error;

	if (!admin)
		goto done;

	sched_nest = FUNC6(skb, TCA_TAPRIO_ATTR_ADMIN_SCHED);
	if (!sched_nest)
		goto options_error;

	if (FUNC1(skb, admin))
		goto admin_error;

	FUNC5(skb, sched_nest);

done:
	FUNC14();

	return FUNC5(skb, nest);

admin_error:
	FUNC4(skb, sched_nest);

options_error:
	FUNC4(skb, nest);

start_error:
	FUNC14();
	return -ENOSPC;
}
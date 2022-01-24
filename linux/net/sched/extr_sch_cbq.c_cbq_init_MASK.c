#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct tc_ratespec {int dummy; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  classid; } ;
struct TYPE_13__ {int allot; int quantum; int avpkt; int minidle; TYPE_3__* R_tab; int /*<<< orphan*/  block; int /*<<< orphan*/  ewma_log; int /*<<< orphan*/  weight; void* cpriority; void* priority2; void* priority; int /*<<< orphan*/ * q; struct Qdisc* qdisc; TYPE_1__ common; struct TYPE_13__* sibling; int /*<<< orphan*/  filter_list; } ;
struct TYPE_12__ {int /*<<< orphan*/  function; } ;
struct cbq_sched_data {TYPE_6__ link; int /*<<< orphan*/  now; int /*<<< orphan*/  toplevel; int /*<<< orphan*/  clhash; TYPE_5__ delay_timer; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;
struct TYPE_10__ {int /*<<< orphan*/  rate; } ;
struct TYPE_11__ {TYPE_2__ rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 int EINVAL ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS_PINNED ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 size_t TCA_CBQ_LSSOPT ; 
 int /*<<< orphan*/  TCA_CBQ_MAX ; 
 size_t TCA_CBQ_RATE ; 
 size_t TCA_CBQ_RTAB ; 
 int /*<<< orphan*/  TC_CBQ_DEF_EWMA ; 
 int /*<<< orphan*/  TC_CBQ_MAXLEVEL ; 
 void* TC_CBQ_MAXPRIO ; 
 int /*<<< orphan*/  FUNC1 (struct cbq_sched_data*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int FUNC3 (struct nlattr**,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,struct tc_ratespec*) ; 
 int /*<<< orphan*/  cbq_undelay ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct tc_ratespec* FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 TYPE_3__* FUNC12 (struct tc_ratespec*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 struct cbq_sched_data* FUNC14 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct cbq_sched_data *q = FUNC14(sch);
	struct nlattr *tb[TCA_CBQ_MAX + 1];
	struct tc_ratespec *r;
	int err;

	FUNC16(&q->watchdog, sch);
	FUNC5(&q->delay_timer, CLOCK_MONOTONIC, HRTIMER_MODE_ABS_PINNED);
	q->delay_timer.function = cbq_undelay;

	err = FUNC3(tb, opt, extack);
	if (err < 0)
		return err;

	if (!tb[TCA_CBQ_RTAB] || !tb[TCA_CBQ_RATE]) {
		FUNC0(extack, "Rate specification missing or incomplete");
		return -EINVAL;
	}

	r = FUNC6(tb[TCA_CBQ_RATE]);

	q->link.R_tab = FUNC12(r, tb[TCA_CBQ_RTAB], extack);
	if (!q->link.R_tab)
		return -EINVAL;

	err = FUNC17(&q->link.block, &q->link.filter_list, sch, extack);
	if (err)
		goto put_rtab;

	err = FUNC9(&q->clhash);
	if (err < 0)
		goto put_block;

	q->link.sibling = &q->link;
	q->link.common.classid = sch->handle;
	q->link.qdisc = sch;
	q->link.q = FUNC10(sch->dev_queue, &pfifo_qdisc_ops,
				      sch->handle, NULL);
	if (!q->link.q)
		q->link.q = &noop_qdisc;
	else
		FUNC13(q->link.q, true);

	q->link.priority = TC_CBQ_MAXPRIO - 1;
	q->link.priority2 = TC_CBQ_MAXPRIO - 1;
	q->link.cpriority = TC_CBQ_MAXPRIO - 1;
	q->link.allot = FUNC8(FUNC11(sch));
	q->link.quantum = q->link.allot;
	q->link.weight = q->link.R_tab->rate.rate;

	q->link.ewma_log = TC_CBQ_DEF_EWMA;
	q->link.avpkt = q->link.allot/2;
	q->link.minidle = -0x7FFFFFFF;

	q->toplevel = TC_CBQ_MAXLEVEL;
	q->now = FUNC7();

	FUNC2(&q->link);

	if (tb[TCA_CBQ_LSSOPT])
		FUNC4(&q->link, FUNC6(tb[TCA_CBQ_LSSOPT]));

	FUNC1(q, &q->link);
	return 0;

put_block:
	FUNC18(q->link.block);

put_rtab:
	FUNC15(q->link.R_tab);
	return err;
}
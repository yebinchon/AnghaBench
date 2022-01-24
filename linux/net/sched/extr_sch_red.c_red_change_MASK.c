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
typedef  int /*<<< orphan*/  u32 ;
struct tc_red_qopt {scalar_t__ limit; int flags; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  Wlog; int /*<<< orphan*/  qth_max; int /*<<< orphan*/  qth_min; } ;
struct red_sched_data {int flags; scalar_t__ limit; int /*<<< orphan*/  vars; struct Qdisc* qdisc; int /*<<< orphan*/  adapt_timer; int /*<<< orphan*/  parms; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int EINVAL ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct Qdisc*) ; 
 int FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  TCA_RED_MAX ; 
 size_t TCA_RED_MAX_P ; 
 size_t TCA_RED_PARMS ; 
 size_t TCA_RED_STAB ; 
 int TC_RED_ADAPTATIVE ; 
 int /*<<< orphan*/  bfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct Qdisc* FUNC3 (struct Qdisc*,int /*<<< orphan*/ *,scalar_t__,struct netlink_ext_ack*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct tc_red_qopt* FUNC5 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int FUNC7 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,int) ; 
 struct red_sched_data* FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*,int) ; 
 int /*<<< orphan*/  red_policy ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct tc_red_qopt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC18 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC19(struct Qdisc *sch, struct nlattr *opt,
		      struct netlink_ext_ack *extack)
{
	struct Qdisc *old_child = NULL, *child = NULL;
	struct red_sched_data *q = FUNC9(sch);
	struct nlattr *tb[TCA_RED_MAX + 1];
	struct tc_red_qopt *ctl;
	int err;
	u32 max_P;

	if (opt == NULL)
		return -EINVAL;

	err = FUNC7(tb, TCA_RED_MAX, opt, red_policy,
					  NULL);
	if (err < 0)
		return err;

	if (tb[TCA_RED_PARMS] == NULL ||
	    tb[TCA_RED_STAB] == NULL)
		return -EINVAL;

	max_P = tb[TCA_RED_MAX_P] ? FUNC6(tb[TCA_RED_MAX_P]) : 0;

	ctl = FUNC5(tb[TCA_RED_PARMS]);
	if (!FUNC12(ctl->qth_min, ctl->qth_max, ctl->Wlog))
		return -EINVAL;

	if (ctl->limit > 0) {
		child = FUNC3(sch, &bfifo_qdisc_ops, ctl->limit,
					 extack);
		if (FUNC0(child))
			return FUNC1(child);

		/* child is fifo, no need to check for noop_qdisc */
		FUNC8(child, true);
	}

	FUNC17(sch);
	q->flags = ctl->flags;
	q->limit = ctl->limit;
	if (child) {
		FUNC11(q->qdisc);
		old_child = q->qdisc;
		q->qdisc = child;
	}

	FUNC14(&q->parms,
		      ctl->qth_min, ctl->qth_max, ctl->Wlog,
		      ctl->Plog, ctl->Scell_log,
		      FUNC5(tb[TCA_RED_STAB]),
		      max_P);
	FUNC15(&q->vars);

	FUNC2(&q->adapt_timer);
	if (ctl->flags & TC_RED_ADAPTATIVE)
		FUNC4(&q->adapt_timer, jiffies + HZ/2);

	if (!q->qdisc->q.qlen)
		FUNC16(&q->vars);

	FUNC18(sch);

	FUNC13(sch, true);

	if (old_child)
		FUNC10(old_child);
	return 0;
}
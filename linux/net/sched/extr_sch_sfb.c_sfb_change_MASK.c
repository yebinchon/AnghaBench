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
typedef  scalar_t__ u32 ;
struct tc_sfb_qopt {scalar_t__ limit; int /*<<< orphan*/  penalty_burst; int /*<<< orphan*/  penalty_rate; int /*<<< orphan*/  bin_size; int /*<<< orphan*/  max; int /*<<< orphan*/  decrement; int /*<<< orphan*/  increment; int /*<<< orphan*/  warmup_time; int /*<<< orphan*/  rehash_interval; } ;
struct sfb_sched_data {int double_buffering; scalar_t__ slot; void* token_time; int /*<<< orphan*/  tokens_avail; int /*<<< orphan*/  penalty_burst; int /*<<< orphan*/  penalty_rate; int /*<<< orphan*/  bin_size; int /*<<< orphan*/  max; int /*<<< orphan*/  decrement; int /*<<< orphan*/  increment; scalar_t__ limit; void* rehash_time; void* warmup_time; void* rehash_interval; struct Qdisc* qdisc; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {scalar_t__ tx_queue_len; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct Qdisc*) ; 
 int FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  TCA_SFB_MAX ; 
 size_t TCA_SFB_PARMS ; 
 struct Qdisc* FUNC2 (struct Qdisc*,int /*<<< orphan*/ *,scalar_t__,struct netlink_ext_ack*) ; 
 void* jiffies ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct tc_sfb_qopt* FUNC4 (struct nlattr*) ; 
 int FUNC5 (struct nlattr**,int /*<<< orphan*/ ,struct nlattr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 TYPE_1__* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,int) ; 
 struct sfb_sched_data* FUNC8 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 struct tc_sfb_qopt sfb_default_ops ; 
 int /*<<< orphan*/  FUNC13 (int,struct sfb_sched_data*) ; 
 int /*<<< orphan*/  sfb_policy ; 
 int /*<<< orphan*/  FUNC14 (struct sfb_sched_data*) ; 

__attribute__((used)) static int FUNC15(struct Qdisc *sch, struct nlattr *opt,
		      struct netlink_ext_ack *extack)
{
	struct sfb_sched_data *q = FUNC8(sch);
	struct Qdisc *child, *old;
	struct nlattr *tb[TCA_SFB_MAX + 1];
	const struct tc_sfb_qopt *ctl = &sfb_default_ops;
	u32 limit;
	int err;

	if (opt) {
		err = FUNC5(tb, TCA_SFB_MAX, opt,
						  sfb_policy, NULL);
		if (err < 0)
			return -EINVAL;

		if (tb[TCA_SFB_PARMS] == NULL)
			return -EINVAL;

		ctl = FUNC4(tb[TCA_SFB_PARMS]);
	}

	limit = ctl->limit;
	if (limit == 0)
		limit = FUNC6(sch)->tx_queue_len;

	child = FUNC2(sch, &pfifo_qdisc_ops, limit, extack);
	if (FUNC0(child))
		return FUNC1(child);

	if (child != &noop_qdisc)
		FUNC7(child, true);
	FUNC11(sch);

	FUNC9(q->qdisc);
	old = q->qdisc;
	q->qdisc = child;

	q->rehash_interval = FUNC3(ctl->rehash_interval);
	q->warmup_time = FUNC3(ctl->warmup_time);
	q->rehash_time = jiffies;
	q->limit = limit;
	q->increment = ctl->increment;
	q->decrement = ctl->decrement;
	q->max = ctl->max;
	q->bin_size = ctl->bin_size;
	q->penalty_rate = ctl->penalty_rate;
	q->penalty_burst = ctl->penalty_burst;
	q->tokens_avail = ctl->penalty_burst;
	q->token_time = jiffies;

	q->slot = 0;
	q->double_buffering = false;
	FUNC14(q);
	FUNC13(0, q);
	FUNC13(1, q);

	FUNC12(sch);
	FUNC10(old);

	return 0;
}
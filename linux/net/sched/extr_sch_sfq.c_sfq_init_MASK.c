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
struct sfq_sched_data {int limit; int maxdepth; int divisor; int maxflows; int /*<<< orphan*/ * slots; int /*<<< orphan*/ * ht; int /*<<< orphan*/  perturbation; scalar_t__ perturb_period; int /*<<< orphan*/  quantum; int /*<<< orphan*/  scaled_quantum; int /*<<< orphan*/ * tail; scalar_t__ cur_depth; TYPE_1__* dep; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; int /*<<< orphan*/  perturb_timer; struct Qdisc* sch; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {void* prev; void* next; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SFQ_DEFAULT_FLOWS ; 
 int SFQ_DEFAULT_HASH_DIVISOR ; 
 int /*<<< orphan*/  SFQ_EMPTY_SLOT ; 
 int SFQ_MAX_DEPTH ; 
 void* SFQ_MAX_FLOWS ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 int /*<<< orphan*/  TIMER_DEFERRABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 struct sfq_sched_data* FUNC4 (struct Qdisc*) ; 
 void* FUNC5 (int) ; 
 int FUNC6 (struct Qdisc*,struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct sfq_sched_data*,int) ; 
 int /*<<< orphan*/  sfq_perturbation ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct sfq_sched_data *q = FUNC4(sch);
	int i;
	int err;

	q->sch = sch;
	FUNC10(&q->perturb_timer, sfq_perturbation, TIMER_DEFERRABLE);

	err = FUNC9(&q->block, &q->filter_list, sch, extack);
	if (err)
		return err;

	for (i = 0; i < SFQ_MAX_DEPTH + 1; i++) {
		q->dep[i].next = i + SFQ_MAX_FLOWS;
		q->dep[i].prev = i + SFQ_MAX_FLOWS;
	}

	q->limit = SFQ_MAX_DEPTH;
	q->maxdepth = SFQ_MAX_DEPTH;
	q->cur_depth = 0;
	q->tail = NULL;
	q->divisor = SFQ_DEFAULT_HASH_DIVISOR;
	q->maxflows = SFQ_DEFAULT_FLOWS;
	q->quantum = FUNC2(FUNC3(sch));
	q->scaled_quantum = FUNC0(q->quantum);
	q->perturb_period = 0;
	FUNC1(&q->perturbation, sizeof(q->perturbation));

	if (opt) {
		int err = FUNC6(sch, opt);
		if (err)
			return err;
	}

	q->ht = FUNC5(sizeof(q->ht[0]) * q->divisor);
	q->slots = FUNC5(sizeof(q->slots[0]) * q->maxflows);
	if (!q->ht || !q->slots) {
		/* Note: sfq_destroy() will be called by our caller */
		return -ENOMEM;
	}

	for (i = 0; i < q->divisor; i++)
		q->ht[i] = SFQ_EMPTY_SLOT;

	for (i = 0; i < q->maxflows; i++) {
		FUNC8(&q->slots[i]);
		FUNC7(q, i);
	}
	if (q->limit >= 1)
		sch->flags |= TCQ_F_CAN_BYPASS;
	else
		sch->flags &= ~TCQ_F_CAN_BYPASS;
	return 0;
}
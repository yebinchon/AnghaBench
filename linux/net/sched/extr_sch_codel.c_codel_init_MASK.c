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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mtu; } ;
struct codel_sched_data {TYPE_1__ params; int /*<<< orphan*/  stats; int /*<<< orphan*/  vars; } ;
struct Qdisc {int limit; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int DEFAULT_CODEL_LIMIT ; 
 int /*<<< orphan*/  TCQ_F_CAN_BYPASS ; 
 int FUNC0 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 struct codel_sched_data* FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, struct nlattr *opt,
		      struct netlink_ext_ack *extack)
{
	struct codel_sched_data *q = FUNC6(sch);

	sch->limit = DEFAULT_CODEL_LIMIT;

	FUNC1(&q->params);
	FUNC3(&q->vars);
	FUNC2(&q->stats);
	q->params.mtu = FUNC4(FUNC5(sch));

	if (opt) {
		int err = FUNC0(sch, opt, extack);

		if (err)
			return err;
	}

	if (sch->limit >= 1)
		sch->flags |= TCQ_F_CAN_BYPASS;
	else
		sch->flags &= ~TCQ_F_CAN_BYPASS;

	return 0;
}
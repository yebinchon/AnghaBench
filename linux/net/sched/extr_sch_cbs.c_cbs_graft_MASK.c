#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct cbs_sched_data {int /*<<< orphan*/  qdisc; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cbs_sched_data* FUNC1 (struct Qdisc*) ; 
 struct Qdisc* FUNC2 (struct Qdisc*,struct Qdisc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
		     struct Qdisc **old, struct netlink_ext_ack *extack)
{
	struct cbs_sched_data *q = FUNC1(sch);

	if (!new) {
		new = FUNC0(sch->dev_queue, &pfifo_qdisc_ops,
					sch->handle, NULL);
		if (!new)
			new = &noop_qdisc;
	}

	*old = FUNC2(sch, new, &q->qdisc);
	return 0;
}
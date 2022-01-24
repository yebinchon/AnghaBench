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
struct multiq_sched_data {int max_bands; int /*<<< orphan*/ ** queues; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int num_tx_queues; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/ ** FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  noop_qdisc ; 
 TYPE_1__* FUNC2 (struct Qdisc*) ; 
 struct multiq_sched_data* FUNC3 (struct Qdisc*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC5(struct Qdisc *sch, struct nlattr *opt,
		       struct netlink_ext_ack *extack)
{
	struct multiq_sched_data *q = FUNC3(sch);
	int i, err;

	q->queues = NULL;

	if (!opt)
		return -EINVAL;

	err = FUNC4(&q->block, &q->filter_list, sch, extack);
	if (err)
		return err;

	q->max_bands = FUNC2(sch)->num_tx_queues;

	q->queues = FUNC0(q->max_bands, sizeof(struct Qdisc *), GFP_KERNEL);
	if (!q->queues)
		return -ENOBUFS;
	for (i = 0; i < q->max_bands; i++)
		q->queues[i] = &noop_qdisc;

	return FUNC1(sch, opt, extack);
}
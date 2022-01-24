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
struct sfb_sched_data {int /*<<< orphan*/ * qdisc; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  noop_qdisc ; 
 struct sfb_sched_data* FUNC0 (struct Qdisc*) ; 
 int FUNC1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct sfb_sched_data *q = FUNC0(sch);
	int err;

	err = FUNC2(&q->block, &q->filter_list, sch, extack);
	if (err)
		return err;

	q->qdisc = &noop_qdisc;
	return FUNC1(sch, opt, extack);
}
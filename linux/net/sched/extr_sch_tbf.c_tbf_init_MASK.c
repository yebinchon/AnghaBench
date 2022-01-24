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
struct tbf_sched_data {int /*<<< orphan*/  t_c; int /*<<< orphan*/ * qdisc; int /*<<< orphan*/  watchdog; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  noop_qdisc ; 
 struct tbf_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int FUNC3 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct tbf_sched_data *q = FUNC1(sch);

	FUNC2(&q->watchdog, sch);
	q->qdisc = &noop_qdisc;

	if (!opt)
		return -EINVAL;

	q->t_c = FUNC0();

	return FUNC3(sch, opt, extack);
}
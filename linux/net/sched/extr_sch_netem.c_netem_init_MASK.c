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
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netem_sched_data {int /*<<< orphan*/  loss_model; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLG_RANDOM ; 
 int EINVAL ; 
 int FUNC0 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct netem_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct Qdisc*) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, struct nlattr *opt,
		      struct netlink_ext_ack *extack)
{
	struct netem_sched_data *q = FUNC2(sch);
	int ret;

	FUNC3(&q->watchdog, sch);

	if (!opt)
		return -EINVAL;

	q->loss_model = CLG_RANDOM;
	ret = FUNC0(sch, opt, extack);
	if (ret)
		FUNC1("netem: change failed\n");
	return ret;
}
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
struct drr_sched {int /*<<< orphan*/  active; int /*<<< orphan*/  clhash; int /*<<< orphan*/  filter_list; int /*<<< orphan*/  block; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 struct drr_sched* FUNC2 (struct Qdisc*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct Qdisc*,struct netlink_ext_ack*) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, struct nlattr *opt,
			  struct netlink_ext_ack *extack)
{
	struct drr_sched *q = FUNC2(sch);
	int err;

	err = FUNC3(&q->block, &q->filter_list, sch, extack);
	if (err)
		return err;
	err = FUNC1(&q->clhash);
	if (err < 0)
		return err;
	FUNC0(&q->active);
	return 0;
}
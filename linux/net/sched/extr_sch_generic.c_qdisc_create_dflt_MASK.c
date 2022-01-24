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
struct netdev_queue {int dummy; } ;
struct Qdisc_ops {scalar_t__ (* init ) (struct Qdisc*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ;int /*<<< orphan*/  owner; } ;
struct Qdisc {unsigned int parent; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct Qdisc* FUNC3 (struct netdev_queue*,struct Qdisc_ops const*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 scalar_t__ FUNC5 (struct Qdisc*,int /*<<< orphan*/ *,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

struct Qdisc *FUNC7(struct netdev_queue *dev_queue,
				const struct Qdisc_ops *ops,
				unsigned int parentid,
				struct netlink_ext_ack *extack)
{
	struct Qdisc *sch;

	if (!FUNC6(ops->owner)) {
		FUNC1(extack, "Failed to increase module reference counter");
		return NULL;
	}

	sch = FUNC3(dev_queue, ops, extack);
	if (FUNC0(sch)) {
		FUNC2(ops->owner);
		return NULL;
	}
	sch->parent = parentid;

	if (!ops->init || ops->init(sch, NULL, extack) == 0)
		return sch;

	FUNC4(sch);
	return NULL;
}
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
struct Qdisc_ops {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  handle; int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct Qdisc* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct Qdisc*,unsigned int) ; 
 struct Qdisc* FUNC3 (int /*<<< orphan*/ ,struct Qdisc_ops*,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

struct Qdisc *FUNC5(struct Qdisc *sch, struct Qdisc_ops *ops,
			       unsigned int limit,
			       struct netlink_ext_ack *extack)
{
	struct Qdisc *q;
	int err = -ENOMEM;

	q = FUNC3(sch->dev_queue, ops, FUNC1(sch->handle, 1),
			      extack);
	if (q) {
		err = FUNC2(q, limit);
		if (err < 0) {
			FUNC4(q);
			q = NULL;
		}
	}

	return q ? : FUNC0(err);
}
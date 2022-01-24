#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct netlink_ext_ack {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  q; } ;
struct TYPE_4__ {int /*<<< orphan*/  classid; } ;
struct htb_class {TYPE_1__ leaf; TYPE_2__ common; scalar_t__ level; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct Qdisc* FUNC1 (struct Qdisc*,struct Qdisc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct Qdisc *sch, unsigned long arg, struct Qdisc *new,
		     struct Qdisc **old, struct netlink_ext_ack *extack)
{
	struct htb_class *cl = (struct htb_class *)arg;

	if (cl->level)
		return -EINVAL;
	if (new == NULL &&
	    (new = FUNC0(sch->dev_queue, &pfifo_qdisc_ops,
				     cl->common.classid, extack)) == NULL)
		return -ENOBUFS;

	*old = FUNC1(sch, new, &cl->leaf.q);
	return 0;
}
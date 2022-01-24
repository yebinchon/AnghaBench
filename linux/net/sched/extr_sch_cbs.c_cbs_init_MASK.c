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
struct net_device {int dummy; } ;
struct cbs_sched_data {int /*<<< orphan*/  watchdog; int /*<<< orphan*/  dequeue; int /*<<< orphan*/  enqueue; scalar_t__ queue; int /*<<< orphan*/  qdisc; int /*<<< orphan*/  cbs_list; } ;
struct Qdisc {scalar_t__ dev_queue; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int FUNC1 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  cbs_dequeue_soft ; 
 int /*<<< orphan*/  cbs_enqueue_soft ; 
 int /*<<< orphan*/  cbs_list ; 
 int /*<<< orphan*/  cbs_list_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net_device* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct cbs_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct Qdisc *sch, struct nlattr *opt,
		    struct netlink_ext_ack *extack)
{
	struct cbs_sched_data *q = FUNC7(sch);
	struct net_device *dev = FUNC5(sch);

	if (!opt) {
		FUNC0(extack, "Missing CBS qdisc options  which are mandatory");
		return -EINVAL;
	}

	q->qdisc = FUNC4(sch->dev_queue, &pfifo_qdisc_ops,
				     sch->handle, extack);
	if (!q->qdisc)
		return -ENOMEM;

	FUNC9(&cbs_list_lock);
	FUNC2(&q->cbs_list, &cbs_list);
	FUNC10(&cbs_list_lock);

	FUNC6(q->qdisc, false);

	q->queue = sch->dev_queue - FUNC3(dev, 0);

	q->enqueue = cbs_enqueue_soft;
	q->dequeue = cbs_dequeue_soft;

	FUNC8(&q->watchdog, sch);

	return FUNC1(sch, opt, extack);
}
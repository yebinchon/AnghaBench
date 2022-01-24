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
struct TYPE_2__ {int /*<<< orphan*/  function; } ;
struct taprio_sched {int clockid; struct Qdisc** qdiscs; int /*<<< orphan*/  taprio_list; struct Qdisc* root; int /*<<< orphan*/  peek; int /*<<< orphan*/  dequeue; TYPE_1__ advance_timer; int /*<<< orphan*/  current_entry_lock; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct netdev_queue {int dummy; } ;
struct net_device {int num_tx_queues; int real_num_tx_queues; } ;
struct Qdisc {scalar_t__ parent; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_TAI ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HRTIMER_MODE_ABS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ TC_H_ROOT ; 
 int /*<<< orphan*/  advance_sched ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Qdisc** FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct netdev_queue* FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  pfifo_qdisc_ops ; 
 struct Qdisc* FUNC8 (struct netdev_queue*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct netlink_ext_ack*) ; 
 struct net_device* FUNC9 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC10 (struct Qdisc*,int) ; 
 struct taprio_sched* FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (struct Qdisc*,struct nlattr*,struct netlink_ext_ack*) ; 
 int /*<<< orphan*/  taprio_dequeue_soft ; 
 int /*<<< orphan*/  taprio_list ; 
 int /*<<< orphan*/  taprio_list_lock ; 
 int /*<<< orphan*/  taprio_peek_soft ; 

__attribute__((used)) static int FUNC16(struct Qdisc *sch, struct nlattr *opt,
		       struct netlink_ext_ack *extack)
{
	struct taprio_sched *q = FUNC11(sch);
	struct net_device *dev = FUNC9(sch);
	int i;

	FUNC13(&q->current_entry_lock);

	FUNC3(&q->advance_timer, CLOCK_TAI, HRTIMER_MODE_ABS);
	q->advance_timer.function = advance_sched;

	q->dequeue = taprio_dequeue_soft;
	q->peek = taprio_peek_soft;

	q->root = sch;

	/* We only support static clockids. Use an invalid value as default
	 * and get the valid one on taprio_change().
	 */
	q->clockid = -1;

	FUNC12(&taprio_list_lock);
	FUNC5(&q->taprio_list, &taprio_list);
	FUNC14(&taprio_list_lock);

	if (sch->parent != TC_H_ROOT)
		return -EOPNOTSUPP;

	if (!FUNC7(dev))
		return -EOPNOTSUPP;

	/* pre-allocate qdisc, attachment can't fail */
	q->qdiscs = FUNC4(dev->num_tx_queues,
			    sizeof(q->qdiscs[0]),
			    GFP_KERNEL);

	if (!q->qdiscs)
		return -ENOMEM;

	if (!opt)
		return -EINVAL;

	for (i = 0; i < dev->num_tx_queues; i++) {
		struct netdev_queue *dev_queue;
		struct Qdisc *qdisc;

		dev_queue = FUNC6(dev, i);
		qdisc = FUNC8(dev_queue,
					  &pfifo_qdisc_ops,
					  FUNC1(FUNC0(sch->handle),
						    FUNC2(i + 1)),
					  extack);
		if (!qdisc)
			return -ENOMEM;

		if (i < dev->real_num_tx_queues)
			FUNC10(qdisc, false);

		q->qdiscs[i] = qdisc;
	}

	return FUNC15(sch, opt, extack);
}
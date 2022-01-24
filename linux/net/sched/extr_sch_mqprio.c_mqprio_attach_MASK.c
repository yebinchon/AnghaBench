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
struct net_device {unsigned int num_tx_queues; unsigned int real_num_tx_queues; } ;
struct mqprio_sched {struct Qdisc** qdiscs; } ;
struct Qdisc {int /*<<< orphan*/  dev_queue; } ;

/* Variables and functions */
 struct Qdisc* FUNC0 (int /*<<< orphan*/ ,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc**) ; 
 struct net_device* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,int) ; 
 struct mqprio_sched* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC6(struct Qdisc *sch)
{
	struct net_device *dev = FUNC2(sch);
	struct mqprio_sched *priv = FUNC4(sch);
	struct Qdisc *qdisc, *old;
	unsigned int ntx;

	/* Attach underlying qdisc */
	for (ntx = 0; ntx < dev->num_tx_queues; ntx++) {
		qdisc = priv->qdiscs[ntx];
		old = FUNC0(qdisc->dev_queue, qdisc);
		if (old)
			FUNC5(old);
		if (ntx < dev->real_num_tx_queues)
			FUNC3(qdisc, false);
	}
	FUNC1(priv->qdiscs);
	priv->qdiscs = NULL;
}
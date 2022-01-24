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
struct netdev_queue {int /*<<< orphan*/  qdisc; struct Qdisc* qdisc_sleeping; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 struct Qdisc noop_qdisc ; 
 int /*<<< orphan*/ * FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct Qdisc *FUNC4(struct netdev_queue *dev_queue,
			      struct Qdisc *qdisc)
{
	struct Qdisc *oqdisc = dev_queue->qdisc_sleeping;
	spinlock_t *root_lock;

	root_lock = FUNC0(oqdisc);
	FUNC2(root_lock);

	/* ... and graft new one */
	if (qdisc == NULL)
		qdisc = &noop_qdisc;
	dev_queue->qdisc_sleeping = qdisc;
	FUNC1(dev_queue->qdisc, &noop_qdisc);

	FUNC3(root_lock);

	return oqdisc;
}
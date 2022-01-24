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
struct netdev_queue {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  state; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __QUEUE_STATE_DRV_XOFF ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 struct Qdisc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct netdev_queue *dev_queue)
{
	if (FUNC4(__QUEUE_STATE_DRV_XOFF, &dev_queue->state)) {
		struct Qdisc *q;

		FUNC2();
		q = FUNC1(dev_queue->qdisc);
		FUNC0(q);
		FUNC3();
	}
}
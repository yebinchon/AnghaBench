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
struct netdev_queue {scalar_t__ trans_start; int /*<<< orphan*/  qdisc; struct Qdisc* qdisc_sleeping; } ;
struct net_device {int dummy; } ;
struct Qdisc {int flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int TCQ_F_BUILTIN ; 
 int /*<<< orphan*/  __QDISC_STATE_DEACTIVATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct Qdisc*) ; 

__attribute__((used)) static void FUNC2(struct net_device *dev,
				 struct netdev_queue *dev_queue,
				 void *_need_watchdog)
{
	struct Qdisc *new_qdisc = dev_queue->qdisc_sleeping;
	int *need_watchdog_p = _need_watchdog;

	if (!(new_qdisc->flags & TCQ_F_BUILTIN))
		FUNC0(__QDISC_STATE_DEACTIVATED, &new_qdisc->state);

	FUNC1(dev_queue->qdisc, new_qdisc);
	if (need_watchdog_p) {
		dev_queue->trans_start = 0;
		*need_watchdog_p = 1;
	}
}
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
struct tcmsg {int /*<<< orphan*/  tcm_handle; scalar_t__ tcm_info; int /*<<< orphan*/  tcm_parent; } ;
struct sk_buff {int dummy; } ;
struct netdev_queue {TYPE_1__* qdisc_sleeping; } ;
struct net_device {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  handle; } ;
struct TYPE_2__ {scalar_t__ handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 unsigned long TC_H_MIN_PRIORITY ; 
 int /*<<< orphan*/  TC_H_ROOT ; 
 struct netdev_queue* FUNC3 (struct Qdisc*,unsigned long) ; 
 int FUNC4 (struct net_device*,unsigned long) ; 
 struct net_device* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long cl,
			 struct sk_buff *skb, struct tcmsg *tcm)
{
	if (cl < TC_H_MIN_PRIORITY) {
		struct netdev_queue *dev_queue = FUNC3(sch, cl);
		struct net_device *dev = FUNC5(sch);
		int tc = FUNC4(dev, cl - 1);

		tcm->tcm_parent = (tc < 0) ? 0 :
			FUNC1(FUNC0(sch->handle),
				  FUNC2(tc + TC_H_MIN_PRIORITY));
		tcm->tcm_info = dev_queue->qdisc_sleeping->handle;
	} else {
		tcm->tcm_parent = TC_H_ROOT;
		tcm->tcm_info = 0;
	}
	tcm->tcm_handle |= FUNC2(cl);
	return 0;
}
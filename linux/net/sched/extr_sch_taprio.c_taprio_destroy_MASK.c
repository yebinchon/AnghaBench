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
struct taprio_sched {TYPE_2__* admin_sched; TYPE_1__* oper_sched; scalar_t__* qdiscs; int /*<<< orphan*/  advance_timer; int /*<<< orphan*/  taprio_list; } ;
struct net_device {unsigned int num_tx_queues; } ;
struct Qdisc {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcu; } ;
struct TYPE_3__ {int /*<<< orphan*/  rcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 struct net_device* FUNC5 (struct Qdisc*) ; 
 struct taprio_sched* FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,struct taprio_sched*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taprio_free_sched_cb ; 
 int /*<<< orphan*/  taprio_list_lock ; 

__attribute__((used)) static void FUNC11(struct Qdisc *sch)
{
	struct taprio_sched *q = FUNC6(sch);
	struct net_device *dev = FUNC5(sch);
	unsigned int i;

	FUNC8(&taprio_list_lock);
	FUNC3(&q->taprio_list);
	FUNC9(&taprio_list_lock);

	FUNC1(&q->advance_timer);

	FUNC10(dev, q, NULL);

	if (q->qdiscs) {
		for (i = 0; i < dev->num_tx_queues && q->qdiscs[i]; i++)
			FUNC7(q->qdiscs[i]);

		FUNC2(q->qdiscs);
	}
	q->qdiscs = NULL;

	FUNC4(dev, 0);

	if (q->oper_sched)
		FUNC0(&q->oper_sched->rcu, taprio_free_sched_cb);

	if (q->admin_sched)
		FUNC0(&q->admin_sched->rcu, taprio_free_sched_cb);
}
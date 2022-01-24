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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct taprio_sched {int /*<<< orphan*/  flags; struct Qdisc** qdiscs; int /*<<< orphan*/  current_entry; } ;
struct sk_buff {int priority; } ;
struct sched_entry {int gate_mask; } ;
struct net_device {int num_tx_queues; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TAPRIO_ALL_GATES_OPEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 struct net_device* FUNC3 (struct Qdisc*) ; 
 struct taprio_sched* FUNC4 (struct Qdisc*) ; 
 struct sched_entry* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 struct sk_buff* FUNC8 (struct Qdisc*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC10(struct Qdisc *sch)
{
	struct taprio_sched *q = FUNC4(sch);
	struct net_device *dev = FUNC3(sch);
	struct sched_entry *entry;
	struct sk_buff *skb;
	u32 gate_mask;
	int i;

	FUNC6();
	entry = FUNC5(q->current_entry);
	gate_mask = entry ? entry->gate_mask : TAPRIO_ALL_GATES_OPEN;
	FUNC7();

	if (!gate_mask)
		return NULL;

	for (i = 0; i < dev->num_tx_queues; i++) {
		struct Qdisc *child = q->qdiscs[i];
		int prio;
		u8 tc;

		if (FUNC9(!child))
			continue;

		skb = child->ops->peek(child);
		if (!skb)
			continue;

		if (FUNC1(q->flags))
			return skb;

		prio = skb->priority;
		tc = FUNC2(dev, prio);

		if (!(gate_mask & FUNC0(tc)))
			continue;

		return skb;
	}

	return NULL;
}
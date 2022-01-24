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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct taprio_sched {int /*<<< orphan*/  flags; struct Qdisc** qdiscs; int /*<<< orphan*/  current_entry; } ;
struct sk_buff {int priority; } ;
struct sched_entry {int gate_mask; int /*<<< orphan*/  budget; int /*<<< orphan*/  close_time; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__* ops; } ;
typedef  int /*<<< orphan*/  ktime_t ;
struct TYPE_3__ {struct sk_buff* (* dequeue ) (struct Qdisc*) ;struct sk_buff* (* peek ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int TAPRIO_ALL_GATES_OPEN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct taprio_sched*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*,struct sk_buff*) ; 
 struct net_device* FUNC8 (struct Qdisc*) ; 
 int FUNC9 (struct sk_buff*) ; 
 struct taprio_sched* FUNC10 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC11 (struct Qdisc*,struct sk_buff*) ; 
 struct sched_entry* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 struct sk_buff* FUNC15 (struct Qdisc*) ; 
 struct sk_buff* FUNC16 (struct Qdisc*) ; 
 struct sk_buff* FUNC17 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC18 (struct taprio_sched*) ; 
 scalar_t__ FUNC19 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC20(struct Qdisc *sch)
{
	struct taprio_sched *q = FUNC10(sch);
	struct net_device *dev = FUNC8(sch);
	struct sk_buff *skb = NULL;
	struct sched_entry *entry;
	u32 gate_mask;
	int i;

	FUNC13();
	entry = FUNC12(q->current_entry);
	/* if there's no entry, it means that the schedule didn't
	 * start yet, so force all gates to be open, this is in
	 * accordance to IEEE 802.1Qbv-2015 Section 8.6.9.4.5
	 * "AdminGateSates"
	 */
	gate_mask = entry ? entry->gate_mask : TAPRIO_ALL_GATES_OPEN;

	if (!gate_mask)
		goto done;

	for (i = 0; i < dev->num_tx_queues; i++) {
		struct Qdisc *child = q->qdiscs[i];
		ktime_t guard;
		int prio;
		int len;
		u8 tc;

		if (FUNC19(!child))
			continue;

		if (FUNC1(q->flags)) {
			skb = child->ops->dequeue(child);
			if (!skb)
				continue;
			goto skb_found;
		}

		skb = child->ops->peek(child);
		if (!skb)
			continue;

		prio = skb->priority;
		tc = FUNC6(dev, prio);

		if (!(gate_mask & FUNC0(tc)))
			continue;

		len = FUNC9(skb);
		guard = FUNC3(FUNC18(q),
				     FUNC5(q, len));

		/* In the case that there's no gate entry, there's no
		 * guard band ...
		 */
		if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
		    FUNC4(guard, entry->close_time))
			continue;

		/* ... and no budget. */
		if (gate_mask != TAPRIO_ALL_GATES_OPEN &&
		    FUNC2(len, &entry->budget) < 0)
			continue;

		skb = child->ops->dequeue(child);
		if (FUNC19(!skb))
			goto done;

skb_found:
		FUNC7(sch, skb);
		FUNC11(sch, skb);
		sch->q.qlen--;

		goto done;
	}

done:
	FUNC14();

	return skb;
}
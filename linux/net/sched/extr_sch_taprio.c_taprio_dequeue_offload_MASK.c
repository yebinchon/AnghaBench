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
struct taprio_sched {struct Qdisc** qdiscs; } ;
struct sk_buff {int dummy; } ;
struct net_device {int num_tx_queues; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__* ops; } ;
struct TYPE_3__ {struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct sk_buff*) ; 
 struct net_device* FUNC1 (struct Qdisc*) ; 
 struct taprio_sched* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct Qdisc*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct Qdisc *sch)
{
	struct taprio_sched *q = FUNC2(sch);
	struct net_device *dev = FUNC1(sch);
	struct sk_buff *skb;
	int i;

	for (i = 0; i < dev->num_tx_queues; i++) {
		struct Qdisc *child = q->qdiscs[i];

		if (FUNC5(!child))
			continue;

		skb = child->ops->dequeue(child);
		if (FUNC5(!skb))
			continue;

		FUNC0(sch, skb);
		FUNC3(sch, skb);
		sch->q.qlen--;

		return skb;
	}

	return NULL;
}
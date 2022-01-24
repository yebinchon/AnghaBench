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
struct sk_buff {int dummy; } ;
struct sfb_sched_data {struct Qdisc* qdisc; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sfb_sched_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,struct sk_buff*) ; 
 struct sfb_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 struct sk_buff* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct Qdisc *sch)
{
	struct sfb_sched_data *q = FUNC2(sch);
	struct Qdisc *child = q->qdisc;
	struct sk_buff *skb;

	skb = child->dequeue(q->qdisc);

	if (skb) {
		FUNC1(sch, skb);
		FUNC3(sch, skb);
		sch->q.qlen--;
		FUNC0(skb, q);
	}

	return skb;
}
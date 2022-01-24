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
struct sk_buff {int /*<<< orphan*/  tstamp; int /*<<< orphan*/  dev; int /*<<< orphan*/ * prev; int /*<<< orphan*/ * next; int /*<<< orphan*/  rbnode; } ;
struct etf_sched_data {int /*<<< orphan*/  last; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*) ; 
 struct etf_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch, struct sk_buff *skb)
{
	struct etf_sched_data *q = FUNC2(sch);

	FUNC4(&skb->rbnode, &q->head);

	/* The rbnode field in the skb re-uses these fields, now that
	 * we are done with the rbnode, reset them.
	 */
	skb->next = NULL;
	skb->prev = NULL;
	skb->dev = FUNC1(sch);

	FUNC3(sch, skb);

	FUNC0(sch, skb);

	q->last = skb->tstamp;

	sch->q.qlen--;
}
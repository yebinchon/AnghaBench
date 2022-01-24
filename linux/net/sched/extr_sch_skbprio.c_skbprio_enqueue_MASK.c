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
typedef  size_t u16 ;
struct skbprio_sched_data {size_t highest_prio; size_t lowest_prio; TYPE_1__* qstats; struct sk_buff_head* qdiscs; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int /*<<< orphan*/  priority; } ;
struct TYPE_4__ {int qlen; } ;
struct Qdisc {int limit; TYPE_2__ q; } ;
struct TYPE_3__ {int /*<<< orphan*/  overlimits; int /*<<< orphan*/  drops; int /*<<< orphan*/  backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NET_XMIT_CN ; 
 int NET_XMIT_SUCCESS ; 
 int SKBPRIO_MAX_PRIORITY ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff_head*,struct sk_buff*) ; 
 size_t FUNC3 (struct skbprio_sched_data*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,unsigned int const) ; 
 int FUNC5 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 scalar_t__ FUNC6 (struct sk_buff*) ; 
 struct skbprio_sched_data* FUNC7 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC8 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC10 (struct sk_buff_head*) ; 

__attribute__((used)) static int FUNC11(struct sk_buff *skb, struct Qdisc *sch,
			  struct sk_buff **to_free)
{
	const unsigned int max_priority = SKBPRIO_MAX_PRIORITY - 1;
	struct skbprio_sched_data *q = FUNC7(sch);
	struct sk_buff_head *qdisc;
	struct sk_buff_head *lp_qdisc;
	struct sk_buff *to_drop;
	u16 prio, lp;

	/* Obtain the priority of @skb. */
	prio = FUNC4(skb->priority, max_priority);

	qdisc = &q->qdiscs[prio];
	if (sch->q.qlen < sch->limit) {
		FUNC2(qdisc, skb);
		FUNC9(sch, skb);
		q->qstats[prio].backlog += FUNC6(skb);

		/* Check to update highest and lowest priorities. */
		if (prio > q->highest_prio)
			q->highest_prio = prio;

		if (prio < q->lowest_prio)
			q->lowest_prio = prio;

		sch->q.qlen++;
		return NET_XMIT_SUCCESS;
	}

	/* If this packet has the lowest priority, drop it. */
	lp = q->lowest_prio;
	if (prio <= lp) {
		q->qstats[prio].drops++;
		q->qstats[prio].overlimits++;
		return FUNC5(skb, sch, to_free);
	}

	FUNC2(qdisc, skb);
	FUNC9(sch, skb);
	q->qstats[prio].backlog += FUNC6(skb);

	/* Drop the packet at the tail of the lowest priority qdisc. */
	lp_qdisc = &q->qdiscs[lp];
	to_drop = FUNC1(lp_qdisc);
	FUNC0(!to_drop);
	FUNC8(sch, to_drop);
	FUNC5(to_drop, sch, to_free);

	q->qstats[lp].backlog -= FUNC6(to_drop);
	q->qstats[lp].drops++;
	q->qstats[lp].overlimits++;

	/* Check to update highest and lowest priorities. */
	if (FUNC10(lp_qdisc)) {
		if (q->lowest_prio == q->highest_prio) {
			/* The incoming packet is the only packet in queue. */
			FUNC0(sch->q.qlen != 1);
			q->lowest_prio = prio;
			q->highest_prio = prio;
		} else {
			q->lowest_prio = FUNC3(q);
		}
	}

	if (prio > q->highest_prio)
		q->highest_prio = prio;

	return NET_XMIT_CN;
}
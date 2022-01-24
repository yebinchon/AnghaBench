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
struct skbprio_sched_data {size_t highest_prio; size_t lowest_prio; TYPE_1__* qstats; struct sk_buff_head* qdiscs; } ;
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
struct TYPE_3__ {int /*<<< orphan*/  backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SKBPRIO_MAX_PRIORITY ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 size_t FUNC2 (struct skbprio_sched_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*) ; 
 struct skbprio_sched_data* FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,struct sk_buff*) ; 
 scalar_t__ FUNC7 (struct sk_buff_head*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC9(struct Qdisc *sch)
{
	struct skbprio_sched_data *q = FUNC5(sch);
	struct sk_buff_head *hpq = &q->qdiscs[q->highest_prio];
	struct sk_buff *skb = FUNC1(hpq);

	if (FUNC8(!skb))
		return NULL;

	sch->q.qlen--;
	FUNC6(sch, skb);
	FUNC3(sch, skb);

	q->qstats[q->highest_prio].backlog -= FUNC4(skb);

	/* Update highest priority field. */
	if (FUNC7(hpq)) {
		if (q->lowest_prio == q->highest_prio) {
			FUNC0(sch->q.qlen);
			q->highest_prio = 0;
			q->lowest_prio = SKBPRIO_MAX_PRIORITY - 1;
		} else {
			q->highest_prio = FUNC2(q);
		}
	}
	return skb;
}
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
struct cbs_sched_data {scalar_t__ credits; int /*<<< orphan*/  last; struct Qdisc* qdisc; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int FUNC0 (struct sk_buff*,struct Qdisc*,struct Qdisc*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct cbs_sched_data* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC3(struct sk_buff *skb, struct Qdisc *sch,
			    struct sk_buff **to_free)
{
	struct cbs_sched_data *q = FUNC2(sch);
	struct Qdisc *qdisc = q->qdisc;

	if (sch->q.qlen == 0 && q->credits > 0) {
		/* We need to stop accumulating credits when there's
		 * no enqueued packets and q->credits is positive.
		 */
		q->credits = 0;
		q->last = FUNC1();
	}

	return FUNC0(skb, sch, qdisc, to_free);
}
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
struct multiq_sched_data {int bands; int curband; struct Qdisc** queues; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; struct sk_buff* (* dequeue ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 struct multiq_sched_data* FUNC4 (struct Qdisc*) ; 
 struct sk_buff* FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct Qdisc *sch)
{
	struct multiq_sched_data *q = FUNC4(sch);
	struct Qdisc *qdisc;
	struct sk_buff *skb;
	int band;

	for (band = 0; band < q->bands; band++) {
		/* cycle through bands to ensure fairness */
		q->curband++;
		if (q->curband >= q->bands)
			q->curband = 0;

		/* Check that target subqueue is available before
		 * pulling an skb to avoid head-of-line blocking.
		 */
		if (!FUNC1(
		    FUNC0(FUNC3(sch), q->curband))) {
			qdisc = q->queues[q->curband];
			skb = qdisc->dequeue(qdisc);
			if (skb) {
				FUNC2(sch, skb);
				sch->q.qlen--;
				return skb;
			}
		}
	}
	return NULL;

}
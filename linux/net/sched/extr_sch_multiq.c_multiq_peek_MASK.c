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
struct multiq_sched_data {unsigned int curband; int bands; struct Qdisc** queues; } ;
struct Qdisc {TYPE_1__* ops; } ;
struct TYPE_2__ {struct sk_buff* (* peek ) (struct Qdisc*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 struct multiq_sched_data* FUNC3 (struct Qdisc*) ; 
 struct sk_buff* FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static struct sk_buff *FUNC5(struct Qdisc *sch)
{
	struct multiq_sched_data *q = FUNC3(sch);
	unsigned int curband = q->curband;
	struct Qdisc *qdisc;
	struct sk_buff *skb;
	int band;

	for (band = 0; band < q->bands; band++) {
		/* cycle through bands to ensure fairness */
		curband++;
		if (curband >= q->bands)
			curband = 0;

		/* Check that target subqueue is available before
		 * pulling an skb to avoid head-of-line blocking.
		 */
		if (!FUNC1(
		    FUNC0(FUNC2(sch), curband))) {
			qdisc = q->queues[curband];
			skb = qdisc->ops->peek(qdisc);
			if (skb)
				return skb;
		}
	}
	return NULL;

}
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
struct sk_buff {int dummy; } ;
struct TYPE_3__ {scalar_t__ undertime; } ;
struct cbq_sched_data {scalar_t__ toplevel; scalar_t__ wd_expires; int /*<<< orphan*/  watchdog; TYPE_1__ link; scalar_t__ now; scalar_t__ tx_class; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_2__ q; } ;
typedef  scalar_t__ psched_time_t ;

/* Variables and functions */
 scalar_t__ PSCHED_PASTPERFECT ; 
 scalar_t__ TC_CBQ_MAXLEVEL ; 
 struct sk_buff* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (struct cbq_sched_data*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 struct cbq_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static struct sk_buff *
FUNC7(struct Qdisc *sch)
{
	struct sk_buff *skb;
	struct cbq_sched_data *q = FUNC4(sch);
	psched_time_t now;

	now = FUNC2();

	if (q->tx_class)
		FUNC1(q);

	q->now = now;

	for (;;) {
		q->wd_expires = 0;

		skb = FUNC0(sch);
		if (skb) {
			FUNC3(sch, skb);
			sch->q.qlen--;
			return skb;
		}

		/* All the classes are overlimit.
		 *
		 * It is possible, if:
		 *
		 * 1. Scheduler is empty.
		 * 2. Toplevel cutoff inhibited borrowing.
		 * 3. Root class is overlimit.
		 *
		 * Reset 2d and 3d conditions and retry.
		 *
		 * Note, that NS and cbq-2.0 are buggy, peeking
		 * an arbitrary class is appropriate for ancestor-only
		 * sharing, but not for toplevel algorithm.
		 *
		 * Our version is better, but slower, because it requires
		 * two passes, but it is unavoidable with top-level sharing.
		 */

		if (q->toplevel == TC_CBQ_MAXLEVEL &&
		    q->link.undertime == PSCHED_PASTPERFECT)
			break;

		q->toplevel = TC_CBQ_MAXLEVEL;
		q->link.undertime = PSCHED_PASTPERFECT;
	}

	/* No packets in scheduler or nobody wants to give them to us :-(
	 * Sigh... start watchdog timer in the last case.
	 */

	if (sch->q.qlen) {
		FUNC5(sch);
		if (q->wd_expires)
			FUNC6(&q->watchdog,
						now + q->wd_expires);
	}
	return NULL;
}
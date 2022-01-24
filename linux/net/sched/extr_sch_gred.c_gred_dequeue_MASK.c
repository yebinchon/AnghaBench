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
typedef  size_t u16 ;
struct sk_buff {int dummy; } ;
struct gred_sched_data {int /*<<< orphan*/  vars; scalar_t__ backlog; } ;
struct gred_sched {size_t DPs; int /*<<< orphan*/  wred_set; struct gred_sched_data** tab; } ;
struct TYPE_2__ {int /*<<< orphan*/  backlog; } ;
struct Qdisc {TYPE_1__ qstats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t) ; 
 struct sk_buff* FUNC2 (struct Qdisc*) ; 
 scalar_t__ FUNC3 (struct sk_buff*) ; 
 struct gred_sched* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (struct sk_buff*) ; 

__attribute__((used)) static struct sk_buff *FUNC7(struct Qdisc *sch)
{
	struct sk_buff *skb;
	struct gred_sched *t = FUNC4(sch);

	skb = FUNC2(sch);

	if (skb) {
		struct gred_sched_data *q;
		u16 dp = FUNC6(skb);

		if (dp >= t->DPs || (q = t->tab[dp]) == NULL) {
			FUNC1("GRED: Unable to relocate VQ 0x%x after dequeue, screwing up backlog\n",
					     FUNC6(skb));
		} else {
			q->backlog -= FUNC3(skb);

			if (FUNC0(t)) {
				if (!sch->qstats.backlog)
					FUNC5(&t->wred_set);
			} else {
				if (!q->backlog)
					FUNC5(&q->vars);
			}
		}

		return skb;
	}

	return NULL;
}
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
struct choke_sched_data {size_t head; size_t tail; struct sk_buff** tab; int /*<<< orphan*/  vars; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct choke_sched_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,struct sk_buff*) ; 
 struct choke_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC6(struct Qdisc *sch)
{
	struct choke_sched_data *q = FUNC2(sch);
	struct sk_buff *skb;

	if (q->head == q->tail) {
		if (!FUNC4(&q->vars))
			FUNC5(&q->vars);
		return NULL;
	}

	skb = q->tab[q->head];
	q->tab[q->head] = NULL;
	FUNC0(q);
	--sch->q.qlen;
	FUNC3(sch, skb);
	FUNC1(sch, skb);

	return skb;
}
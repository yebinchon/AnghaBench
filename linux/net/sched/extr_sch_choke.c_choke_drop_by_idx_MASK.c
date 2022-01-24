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
struct choke_sched_data {unsigned int head; unsigned int tail; struct sk_buff** tab; } ;
struct TYPE_2__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct choke_sched_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct choke_sched_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct Qdisc*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 struct choke_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct Qdisc *sch, unsigned int idx,
			      struct sk_buff **to_free)
{
	struct choke_sched_data *q = FUNC4(sch);
	struct sk_buff *skb = q->tab[idx];

	q->tab[idx] = NULL;

	if (idx == q->head)
		FUNC0(q);
	if (idx == q->tail)
		FUNC1(q);

	FUNC5(sch, skb);
	FUNC6(sch, 1, FUNC3(skb));
	FUNC2(skb, sch, to_free);
	--sch->q.qlen;
}
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
struct TYPE_3__ {int /*<<< orphan*/  q; } ;
struct atm_qdisc_data {TYPE_1__ link; int /*<<< orphan*/  task; } ;
struct TYPE_4__ {int /*<<< orphan*/  qlen; } ;
struct Qdisc {TYPE_2__ q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct Qdisc*,struct atm_qdisc_data*) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ ) ; 
 struct atm_qdisc_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct sk_buff *FUNC4(struct Qdisc *sch)
{
	struct atm_qdisc_data *p = FUNC2(sch);
	struct sk_buff *skb;

	FUNC0("atm_tc_dequeue(sch %p,[qdisc %p])\n", sch, p);
	FUNC3(&p->task);
	skb = FUNC1(p->link.q);
	if (skb)
		sch->q.qlen--;
	return skb;
}
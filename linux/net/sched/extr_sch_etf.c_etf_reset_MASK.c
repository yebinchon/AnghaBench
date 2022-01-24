#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct Qdisc* qdisc; } ;
struct etf_sched_data {scalar_t__ last; TYPE_2__ watchdog; } ;
struct TYPE_6__ {scalar_t__ qlen; } ;
struct TYPE_4__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_3__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 struct etf_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct etf_sched_data *q = FUNC1(sch);

	/* Only cancel watchdog if it's been initialized. */
	if (q->watchdog.qdisc == sch)
		FUNC2(&q->watchdog);

	/* No matter which mode we are on, it's safe to clear both lists. */
	FUNC3(sch);
	FUNC0(&sch->q);

	sch->qstats.backlog = 0;
	sch->q.qlen = 0;

	q->last = 0;
}
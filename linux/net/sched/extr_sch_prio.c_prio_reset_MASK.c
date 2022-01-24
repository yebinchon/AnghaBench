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
struct prio_sched_data {int bands; int /*<<< orphan*/ * queues; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 struct prio_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct Qdisc *sch)
{
	int prio;
	struct prio_sched_data *q = FUNC0(sch);

	for (prio = 0; prio < q->bands; prio++)
		FUNC1(q->queues[prio]);
	sch->qstats.backlog = 0;
	sch->q.qlen = 0;
}
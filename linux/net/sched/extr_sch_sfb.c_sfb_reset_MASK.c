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
struct sfb_sched_data {int double_buffering; scalar_t__ slot; int /*<<< orphan*/  qdisc; } ;
struct TYPE_4__ {scalar_t__ qlen; } ;
struct TYPE_3__ {scalar_t__ backlog; } ;
struct Qdisc {TYPE_2__ q; TYPE_1__ qstats; } ;

/* Variables and functions */
 struct sfb_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sfb_sched_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct sfb_sched_data*) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct sfb_sched_data *q = FUNC0(sch);

	FUNC1(q->qdisc);
	sch->qstats.backlog = 0;
	sch->q.qlen = 0;
	q->slot = 0;
	q->double_buffering = false;
	FUNC3(q);
	FUNC2(0, q);
}
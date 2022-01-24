#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct skbprio_sched_data {int /*<<< orphan*/ * qdiscs; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int SKBPRIO_MAX_PRIORITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct skbprio_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch)
{
	struct skbprio_sched_data *q = FUNC1(sch);
	int prio;

	for (prio = 0; prio < SKBPRIO_MAX_PRIORITY; prio++)
		FUNC0(&q->qdiscs[prio]);
}
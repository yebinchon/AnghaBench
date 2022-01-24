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
struct netem_sched_data {int /*<<< orphan*/  watchdog; scalar_t__ qdisc; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 struct netem_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch)
{
	struct netem_sched_data *q = FUNC0(sch);

	FUNC2(sch);
	FUNC4(sch);
	if (q->qdisc)
		FUNC1(q->qdisc);
	FUNC3(&q->watchdog);
}
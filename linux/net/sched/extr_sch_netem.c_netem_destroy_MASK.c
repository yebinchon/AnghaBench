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
struct netem_sched_data {int /*<<< orphan*/  slot_dist; int /*<<< orphan*/  delay_dist; scalar_t__ qdisc; int /*<<< orphan*/  watchdog; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct netem_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct netem_sched_data *q = FUNC1(sch);

	FUNC3(&q->watchdog);
	if (q->qdisc)
		FUNC2(q->qdisc);
	FUNC0(q->delay_dist);
	FUNC0(q->slot_dist);
}
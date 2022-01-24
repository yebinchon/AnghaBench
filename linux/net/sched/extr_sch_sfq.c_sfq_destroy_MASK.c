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
struct sfq_sched_data {int /*<<< orphan*/  red_parms; int /*<<< orphan*/  slots; int /*<<< orphan*/  ht; int /*<<< orphan*/  perturb_timer; scalar_t__ perturb_period; int /*<<< orphan*/  block; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct sfq_sched_data* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch)
{
	struct sfq_sched_data *q = FUNC2(sch);

	FUNC4(q->block);
	q->perturb_period = 0;
	FUNC0(&q->perturb_timer);
	FUNC3(q->ht);
	FUNC3(q->slots);
	FUNC1(q->red_parms);
}
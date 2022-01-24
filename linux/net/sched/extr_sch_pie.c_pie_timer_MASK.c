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
struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ tupdate; } ;
struct pie_sched_data {TYPE_1__ params; int /*<<< orphan*/  adapt_timer; struct Qdisc* sch; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  adapt_timer ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*) ; 
 struct pie_sched_data* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct pie_sched_data* q ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct pie_sched_data *q = FUNC1(q, t, adapt_timer);
	struct Qdisc *sch = q->sch;
	spinlock_t *root_lock = FUNC3(FUNC4(sch));

	FUNC5(root_lock);
	FUNC0(sch);

	/* reset the timer to fire after 'tupdate'. tupdate is in jiffies. */
	if (q->params.tupdate)
		FUNC2(&q->adapt_timer, jiffies + q->params.tupdate);
	FUNC6(root_lock);
}
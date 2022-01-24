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
struct timer_list {int dummy; } ;
struct red_sched_data {int /*<<< orphan*/  adapt_timer; int /*<<< orphan*/  vars; int /*<<< orphan*/  parms; struct Qdisc* sch; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  adapt_timer ; 
 struct red_sched_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct red_sched_data* q ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct timer_list *t)
{
	struct red_sched_data *q = FUNC0(q, t, adapt_timer);
	struct Qdisc *sch = q->sch;
	spinlock_t *root_lock = FUNC2(FUNC3(sch));

	FUNC5(root_lock);
	FUNC4(&q->parms, &q->vars);
	FUNC1(&q->adapt_timer, jiffies + HZ/2);
	FUNC6(root_lock);
}
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
struct red_sched_data {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  adapt_timer; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct red_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,int) ; 

__attribute__((used)) static void FUNC4(struct Qdisc *sch)
{
	struct red_sched_data *q = FUNC1(sch);

	FUNC0(&q->adapt_timer);
	FUNC3(sch, false);
	FUNC2(q->qdisc);
}
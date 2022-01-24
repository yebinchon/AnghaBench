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
struct TYPE_2__ {scalar_t__ tupdate; } ;
struct pie_sched_data {int /*<<< orphan*/  adapt_timer; TYPE_1__ params; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct pie_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC2(struct Qdisc *sch)
{
	struct pie_sched_data *q = FUNC1(sch);

	q->params.tupdate = 0;
	FUNC0(&q->adapt_timer);
}
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
struct prio_sched_data {struct Qdisc** queues; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int /*<<< orphan*/  bstats; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct prio_sched_data* FUNC1 (struct Qdisc*) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC4(struct Qdisc *sch, unsigned long cl,
				 struct gnet_dump *d)
{
	struct prio_sched_data *q = FUNC1(sch);
	struct Qdisc *cl_q;

	cl_q = q->queues[cl - 1];
	if (FUNC0(FUNC3(sch),
				  d, NULL, &cl_q->bstats) < 0 ||
	    FUNC2(d, cl_q) < 0)
		return -1;

	return 0;
}
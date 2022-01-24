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
struct hfsc_class {int /*<<< orphan*/  rate_est; int /*<<< orphan*/  qdisc; int /*<<< orphan*/  block; } ;
struct hfsc_sched {struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hfsc_class*) ; 
 struct hfsc_sched* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct Qdisc *sch, struct hfsc_class *cl)
{
	struct hfsc_sched *q = FUNC2(sch);

	FUNC4(cl->block);
	FUNC3(cl->qdisc);
	FUNC0(&cl->rate_est);
	if (cl != &q->root)
		FUNC1(cl);
}
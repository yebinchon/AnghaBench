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
struct qfq_sched {int dummy; } ;
struct qfq_class {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  rate_est; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct qfq_class*) ; 
 struct qfq_sched* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qfq_sched*,struct qfq_class*) ; 

__attribute__((used)) static void FUNC5(struct Qdisc *sch, struct qfq_class *cl)
{
	struct qfq_sched *q = FUNC2(sch);

	FUNC4(q, cl);
	FUNC0(&cl->rate_est);
	FUNC3(cl->qdisc);
	FUNC1(cl);
}
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
struct qfq_sched {int /*<<< orphan*/  clhash; } ;
struct qfq_class {scalar_t__ filter_cnt; int /*<<< orphan*/  common; int /*<<< orphan*/  qdisc; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct qfq_sched* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct Qdisc*,struct qfq_class*) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long arg)
{
	struct qfq_sched *q = FUNC1(sch);
	struct qfq_class *cl = (struct qfq_class *)arg;

	if (cl->filter_cnt > 0)
		return -EBUSY;

	FUNC4(sch);

	FUNC2(cl->qdisc);
	FUNC0(&q->clhash, &cl->common);

	FUNC5(sch);

	FUNC3(sch, cl);
	return 0;
}
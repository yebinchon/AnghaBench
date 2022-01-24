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
struct drr_sched {int /*<<< orphan*/  clhash; } ;
struct drr_class {scalar_t__ filter_cnt; int /*<<< orphan*/  common; int /*<<< orphan*/  qdisc; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct Qdisc*,struct drr_class*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct drr_sched* FUNC2 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long arg)
{
	struct drr_sched *q = FUNC2(sch);
	struct drr_class *cl = (struct drr_class *)arg;

	if (cl->filter_cnt > 0)
		return -EBUSY;

	FUNC4(sch);

	FUNC3(cl->qdisc);
	FUNC1(&q->clhash, &cl->common);

	FUNC5(sch);

	FUNC0(sch, cl);
	return 0;
}
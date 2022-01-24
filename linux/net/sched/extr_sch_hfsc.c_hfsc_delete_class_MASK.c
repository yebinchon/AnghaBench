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
struct hfsc_class {scalar_t__ level; scalar_t__ filter_cnt; int /*<<< orphan*/  cl_common; int /*<<< orphan*/  qdisc; int /*<<< orphan*/  cl_parent; int /*<<< orphan*/  siblings; } ;
struct hfsc_sched {int /*<<< orphan*/  clhash; struct hfsc_class root; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,struct hfsc_class*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct hfsc_sched* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC7 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC8(struct Qdisc *sch, unsigned long arg)
{
	struct hfsc_sched *q = FUNC4(sch);
	struct hfsc_class *cl = (struct hfsc_class *)arg;

	if (cl->level > 0 || cl->filter_cnt > 0 || cl == &q->root)
		return -EBUSY;

	FUNC6(sch);

	FUNC2(&cl->siblings);
	FUNC0(cl->cl_parent);

	FUNC5(cl->qdisc);
	FUNC3(&q->clhash, &cl->cl_common);

	FUNC7(sch);

	FUNC1(sch, cl);
	return 0;
}
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
typedef  int /*<<< orphan*/  xstats ;
struct tc_qfq_stats {int /*<<< orphan*/  lmax; int /*<<< orphan*/  weight; } ;
struct qfq_class {int /*<<< orphan*/  qdisc; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; TYPE_1__* agg; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lmax; int /*<<< orphan*/  class_weight; } ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,struct tc_qfq_stats*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tc_qfq_stats*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct gnet_dump*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC6(struct Qdisc *sch, unsigned long arg,
				struct gnet_dump *d)
{
	struct qfq_class *cl = (struct qfq_class *)arg;
	struct tc_qfq_stats xstats;

	FUNC3(&xstats, 0, sizeof(xstats));

	xstats.weight = cl->agg->class_weight;
	xstats.lmax = cl->agg->lmax;

	if (FUNC1(FUNC5(sch),
				  d, NULL, &cl->bstats) < 0 ||
	    FUNC2(d, &cl->rate_est) < 0 ||
	    FUNC4(d, cl->qdisc) < 0)
		return -1;

	return FUNC0(d, &xstats, sizeof(xstats));
}
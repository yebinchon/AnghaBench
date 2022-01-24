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
typedef  int /*<<< orphan*/  xstats ;
struct tc_drr_stats {int /*<<< orphan*/  deficit; } ;
struct gnet_dump {int dummy; } ;
struct drr_class {int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  deficit; struct Qdisc* qdisc; } ;
struct Qdisc {int /*<<< orphan*/  qstats; int /*<<< orphan*/  cpu_qstats; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,struct tc_drr_stats*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tc_drr_stats*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC7(struct Qdisc *sch, unsigned long arg,
				struct gnet_dump *d)
{
	struct drr_class *cl = (struct drr_class *)arg;
	__u32 qlen = FUNC5(cl->qdisc);
	struct Qdisc *cl_q = cl->qdisc;
	struct tc_drr_stats xstats;

	FUNC4(&xstats, 0, sizeof(xstats));
	if (qlen)
		xstats.deficit = cl->deficit;

	if (FUNC1(FUNC6(sch),
				  d, NULL, &cl->bstats) < 0 ||
	    FUNC3(d, &cl->rate_est) < 0 ||
	    FUNC2(d, cl_q->cpu_qstats, &cl_q->qstats, qlen) < 0)
		return -1;

	return FUNC0(d, &xstats, sizeof(xstats));
}
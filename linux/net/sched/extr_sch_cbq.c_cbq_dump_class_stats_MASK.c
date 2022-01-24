#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gnet_dump {int dummy; } ;
struct cbq_sched_data {scalar_t__ now; } ;
struct TYPE_4__ {scalar_t__ undertime; int /*<<< orphan*/  avgidle; } ;
struct TYPE_3__ {int /*<<< orphan*/  backlog; } ;
struct cbq_class {scalar_t__ undertime; TYPE_2__ xstats; TYPE_1__ qstats; int /*<<< orphan*/  rate_est; int /*<<< orphan*/  bstats; int /*<<< orphan*/  q; int /*<<< orphan*/  avgidle; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ PSCHED_PASTPERFECT ; 
 int FUNC0 (struct gnet_dump*,TYPE_2__*,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct gnet_dump*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct gnet_dump*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct gnet_dump*,int /*<<< orphan*/ *) ; 
 struct cbq_sched_data* FUNC4 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*) ; 

__attribute__((used)) static int
FUNC7(struct Qdisc *sch, unsigned long arg,
	struct gnet_dump *d)
{
	struct cbq_sched_data *q = FUNC4(sch);
	struct cbq_class *cl = (struct cbq_class *)arg;
	__u32 qlen;

	cl->xstats.avgidle = cl->avgidle;
	cl->xstats.undertime = 0;
	FUNC5(cl->q, &qlen, &cl->qstats.backlog);

	if (cl->undertime != PSCHED_PASTPERFECT)
		cl->xstats.undertime = cl->undertime - q->now;

	if (FUNC1(FUNC6(sch),
				  d, NULL, &cl->bstats) < 0 ||
	    FUNC3(d, &cl->rate_est) < 0 ||
	    FUNC2(d, NULL, &cl->qstats, qlen) < 0)
		return -1;

	return FUNC0(d, &cl->xstats, sizeof(cl->xstats));
}
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
struct tc_sfb_xstats {int /*<<< orphan*/  avgprob; int /*<<< orphan*/  maxprob; int /*<<< orphan*/  maxqlen; int /*<<< orphan*/  marked; int /*<<< orphan*/  childdrop; int /*<<< orphan*/  queuedrop; int /*<<< orphan*/  bucketdrop; int /*<<< orphan*/  penaltydrop; int /*<<< orphan*/  earlydrop; } ;
struct TYPE_2__ {int /*<<< orphan*/  marked; int /*<<< orphan*/  childdrop; int /*<<< orphan*/  queuedrop; int /*<<< orphan*/  bucketdrop; int /*<<< orphan*/  penaltydrop; int /*<<< orphan*/  earlydrop; } ;
struct sfb_sched_data {TYPE_1__ stats; } ;
struct gnet_dump {int dummy; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  st ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,struct tc_sfb_xstats*,int) ; 
 struct sfb_sched_data* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct sfb_sched_data*) ; 

__attribute__((used)) static int FUNC3(struct Qdisc *sch, struct gnet_dump *d)
{
	struct sfb_sched_data *q = FUNC1(sch);
	struct tc_sfb_xstats st = {
		.earlydrop = q->stats.earlydrop,
		.penaltydrop = q->stats.penaltydrop,
		.bucketdrop = q->stats.bucketdrop,
		.queuedrop = q->stats.queuedrop,
		.childdrop = q->stats.childdrop,
		.marked = q->stats.marked,
	};

	st.maxqlen = FUNC2(&st.maxprob, &st.avgprob, q);

	return FUNC0(d, &st, sizeof(st));
}
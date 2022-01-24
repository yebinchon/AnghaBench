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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tc_gred_qopt {scalar_t__ limit; int /*<<< orphan*/  Scell_log; int /*<<< orphan*/  Plog; int /*<<< orphan*/  Wlog; int /*<<< orphan*/  qth_max; int /*<<< orphan*/  qth_min; } ;
struct netlink_ext_ack {int dummy; } ;
struct gred_sched_data {int red_flags; int DP; int prio; scalar_t__ limit; scalar_t__ backlog; int /*<<< orphan*/  vars; int /*<<< orphan*/  parms; } ;
struct gred_sched {int red_flags; struct gred_sched_data** tab; } ;
struct Qdisc {scalar_t__ limit; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int GRED_VQ_RED_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 struct gred_sched* FUNC1 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC6(struct Qdisc *sch, int dp,
				 struct tc_gred_qopt *ctl, int prio,
				 u8 *stab, u32 max_P,
				 struct gred_sched_data **prealloc,
				 struct netlink_ext_ack *extack)
{
	struct gred_sched *table = FUNC1(sch);
	struct gred_sched_data *q = table->tab[dp];

	if (!FUNC2(ctl->qth_min, ctl->qth_max, ctl->Wlog)) {
		FUNC0(extack, "invalid RED parameters");
		return -EINVAL;
	}

	if (!q) {
		table->tab[dp] = q = *prealloc;
		*prealloc = NULL;
		if (!q)
			return -ENOMEM;
		q->red_flags = table->red_flags & GRED_VQ_RED_FLAGS;
	}

	q->DP = dp;
	q->prio = prio;
	if (ctl->limit > sch->limit)
		q->limit = sch->limit;
	else
		q->limit = ctl->limit;

	if (q->backlog == 0)
		FUNC3(&q->vars);

	FUNC4(&q->parms,
		      ctl->qth_min, ctl->qth_max, ctl->Wlog, ctl->Plog,
		      ctl->Scell_log, stab, max_P);
	FUNC5(&q->vars);
	return 0;
}
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
struct tc_gred_sopt {int DPs; scalar_t__ def_DP; int flags; scalar_t__ grio; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct gred_sched {scalar_t__ DPs; scalar_t__ def; int red_flags; TYPE_1__** tab; } ;
struct Qdisc {int dummy; } ;
struct TYPE_2__ {int red_flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int GRED_VQ_RED_FLAGS ; 
 int MAX_DPs ; 
 int /*<<< orphan*/  FUNC0 (struct netlink_ext_ack*,char*) ; 
 int /*<<< orphan*/  TC_GRED_REPLACE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC3 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC4 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC5 (struct gred_sched*) ; 
 int /*<<< orphan*/  FUNC6 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct gred_sched*) ; 
 scalar_t__ FUNC8 (struct Qdisc*) ; 
 struct tc_gred_sopt* FUNC9 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int) ; 
 struct gred_sched* FUNC11 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC12 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC13 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC14(struct Qdisc *sch, struct nlattr *dps,
				 struct netlink_ext_ack *extack)
{
	struct gred_sched *table = FUNC11(sch);
	struct tc_gred_sopt *sopt;
	bool red_flags_changed;
	int i;

	if (!dps)
		return -EINVAL;

	sopt = FUNC9(dps);

	if (sopt->DPs > MAX_DPs) {
		FUNC0(extack, "number of virtual queues too high");
		return -EINVAL;
	}
	if (sopt->DPs == 0) {
		FUNC0(extack,
				   "number of virtual queues can't be 0");
		return -EINVAL;
	}
	if (sopt->def_DP >= sopt->DPs) {
		FUNC0(extack, "default virtual queue above virtual queue count");
		return -EINVAL;
	}
	if (sopt->flags && FUNC7(table)) {
		FUNC0(extack, "can't set per-Qdisc RED flags when per-virtual queue flags are used");
		return -EINVAL;
	}

	FUNC12(sch);
	table->DPs = sopt->DPs;
	table->def = sopt->def_DP;
	red_flags_changed = table->red_flags != sopt->flags;
	table->red_flags = sopt->flags;

	/*
	 * Every entry point to GRED is synchronized with the above code
	 * and the DP is checked against DPs, i.e. shadowed VQs can no
	 * longer be found so we can unlock right here.
	 */
	FUNC13(sch);

	if (sopt->grio) {
		FUNC4(table);
		FUNC3(table);
		if (FUNC8(sch))
			FUNC5(table);
	} else {
		FUNC2(table);
		FUNC3(table);
	}

	if (red_flags_changed)
		for (i = 0; i < table->DPs; i++)
			if (table->tab[i])
				table->tab[i]->red_flags =
					table->red_flags & GRED_VQ_RED_FLAGS;

	for (i = table->DPs; i < MAX_DPs; i++) {
		if (table->tab[i]) {
			FUNC10("GRED: Warning: Destroying shadowed VQ 0x%x\n",
				i);
			FUNC1(table->tab[i]);
			table->tab[i] = NULL;
		}
	}

	FUNC6(sch, TC_GRED_REPLACE);
	return 0;
}
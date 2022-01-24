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
struct tc_choke_xstats {int /*<<< orphan*/  matched; int /*<<< orphan*/  other; int /*<<< orphan*/  pdrop; scalar_t__ marked; scalar_t__ early; } ;
struct gnet_dump {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  matched; int /*<<< orphan*/  other; int /*<<< orphan*/  pdrop; scalar_t__ forced_mark; scalar_t__ prob_mark; scalar_t__ forced_drop; scalar_t__ prob_drop; } ;
struct choke_sched_data {TYPE_1__ stats; } ;
struct Qdisc {int dummy; } ;
typedef  int /*<<< orphan*/  st ;

/* Variables and functions */
 int FUNC0 (struct gnet_dump*,struct tc_choke_xstats*,int) ; 
 struct choke_sched_data* FUNC1 (struct Qdisc*) ; 

__attribute__((used)) static int FUNC2(struct Qdisc *sch, struct gnet_dump *d)
{
	struct choke_sched_data *q = FUNC1(sch);
	struct tc_choke_xstats st = {
		.early	= q->stats.prob_drop + q->stats.forced_drop,
		.marked	= q->stats.prob_mark + q->stats.forced_mark,
		.pdrop	= q->stats.pdrop,
		.other	= q->stats.other,
		.matched = q->stats.matched,
	};

	return FUNC0(d, &st, sizeof(st));
}
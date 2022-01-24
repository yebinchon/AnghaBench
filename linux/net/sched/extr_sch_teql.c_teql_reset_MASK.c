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
struct teql_sched_data {int /*<<< orphan*/  q; } ;
struct TYPE_2__ {scalar_t__ qlen; } ;
struct Qdisc {TYPE_1__ q; } ;

/* Variables and functions */
 struct teql_sched_data* FUNC0 (struct Qdisc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(struct Qdisc *sch)
{
	struct teql_sched_data *dat = FUNC0(sch);

	FUNC1(&dat->q);
	sch->q.qlen = 0;
}
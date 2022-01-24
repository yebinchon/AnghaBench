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
struct gred_sched {int DPs; scalar_t__* tab; } ;
struct Qdisc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TC_GRED_DESTROY ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct Qdisc*,int /*<<< orphan*/ ) ; 
 struct gred_sched* FUNC2 (struct Qdisc*) ; 

__attribute__((used)) static void FUNC3(struct Qdisc *sch)
{
	struct gred_sched *table = FUNC2(sch);
	int i;

	for (i = 0; i < table->DPs; i++) {
		if (table->tab[i])
			FUNC0(table->tab[i]);
	}
	FUNC1(sch, TC_GRED_DESTROY);
}
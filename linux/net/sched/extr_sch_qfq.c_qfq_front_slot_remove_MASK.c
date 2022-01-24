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
struct qfq_group {size_t front; int /*<<< orphan*/  full_slots; int /*<<< orphan*/ * slots; } ;
struct qfq_aggregate {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 struct qfq_aggregate* FUNC4 (struct qfq_group*) ; 

__attribute__((used)) static void FUNC5(struct qfq_group *grp)
{
	struct qfq_aggregate *agg = FUNC4(grp);

	FUNC0(!agg);
	FUNC2(&agg->next);
	if (FUNC3(&grp->slots[grp->front]))
		FUNC1(0, &grp->full_slots);
}
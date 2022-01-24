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
typedef  int u64 ;
struct qfq_group {int S; int slot_shift; int front; int /*<<< orphan*/  full_slots; int /*<<< orphan*/ * slots; } ;
struct qfq_aggregate {int /*<<< orphan*/  next; int /*<<< orphan*/  F; int /*<<< orphan*/  S; } ;

/* Variables and functions */
 int QFQ_MAX_SLOTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct qfq_group *grp, struct qfq_aggregate *agg,
			    u64 roundedS)
{
	u64 slot = (roundedS - grp->S) >> grp->slot_shift;
	unsigned int i; /* slot index in the bucket list */

	if (FUNC2(slot > QFQ_MAX_SLOTS - 2)) {
		u64 deltaS = roundedS - grp->S -
			((u64)(QFQ_MAX_SLOTS - 2)<<grp->slot_shift);
		agg->S -= deltaS;
		agg->F -= deltaS;
		slot = QFQ_MAX_SLOTS - 2;
	}

	i = (grp->front + slot) % QFQ_MAX_SLOTS;

	FUNC1(&agg->next, &grp->slots[i]);
	FUNC0(slot, &grp->full_slots);
}
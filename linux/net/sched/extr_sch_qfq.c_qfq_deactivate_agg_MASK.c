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
typedef  scalar_t__ u64 ;
struct qfq_sched {unsigned long* bitmaps; struct qfq_aggregate* in_serv_agg; } ;
struct qfq_group {unsigned long index; size_t front; unsigned long long slot_shift; scalar_t__ S; scalar_t__ F; int /*<<< orphan*/ * slots; int /*<<< orphan*/  full_slots; } ;
struct qfq_aggregate {int /*<<< orphan*/  S; int /*<<< orphan*/  F; struct qfq_group* grp; } ;

/* Variables and functions */
 size_t EB ; 
 size_t ER ; 
 size_t IB ; 
 size_t IR ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long*) ; 
 unsigned long FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct qfq_aggregate*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qfq_sched*,struct qfq_group*) ; 
 struct qfq_aggregate* FUNC6 (struct qfq_sched*) ; 
 int /*<<< orphan*/  FUNC7 (struct qfq_sched*,unsigned long,size_t,size_t) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (struct qfq_sched*,struct qfq_group*,struct qfq_aggregate*) ; 
 struct qfq_aggregate* FUNC10 (struct qfq_group*) ; 
 scalar_t__ FUNC11 (unsigned long,unsigned long*) ; 

__attribute__((used)) static void FUNC12(struct qfq_sched *q, struct qfq_aggregate *agg)
{
	struct qfq_group *grp = agg->grp;
	unsigned long mask;
	u64 roundedS;
	int s;

	if (agg == q->in_serv_agg) {
		FUNC3(agg);
		q->in_serv_agg = FUNC6(q);
		return;
	}

	agg->F = agg->S;
	FUNC9(q, grp, agg);

	if (!grp->full_slots) {
		FUNC0(grp->index, &q->bitmaps[IR]);
		FUNC0(grp->index, &q->bitmaps[EB]);
		FUNC0(grp->index, &q->bitmaps[IB]);

		if (FUNC11(grp->index, &q->bitmaps[ER]) &&
		    !(q->bitmaps[ER] & ~((1UL << grp->index) - 1))) {
			mask = q->bitmaps[ER] & ((1UL << grp->index) - 1);
			if (mask)
				mask = ~((1UL << FUNC1(mask)) - 1);
			else
				mask = ~0UL;
			FUNC7(q, mask, EB, ER);
			FUNC7(q, mask, IB, IR);
		}
		FUNC0(grp->index, &q->bitmaps[ER]);
	} else if (FUNC4(&grp->slots[grp->front])) {
		agg = FUNC10(grp);
		roundedS = FUNC8(agg->S, grp->slot_shift);
		if (grp->S != roundedS) {
			FUNC0(grp->index, &q->bitmaps[ER]);
			FUNC0(grp->index, &q->bitmaps[IR]);
			FUNC0(grp->index, &q->bitmaps[EB]);
			FUNC0(grp->index, &q->bitmaps[IB]);
			grp->S = roundedS;
			grp->F = roundedS + (2ULL << grp->slot_shift);
			s = FUNC5(q, grp);
			FUNC2(grp->index, &q->bitmaps[s]);
		}
	}
}
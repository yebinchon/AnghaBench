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
typedef  scalar_t__ u64 ;
struct qfq_sched {scalar_t__ V; int /*<<< orphan*/ * bitmaps; } ;
struct qfq_group {scalar_t__ F; } ;
struct qfq_aggregate {scalar_t__ F; scalar_t__ S; TYPE_1__* grp; } ;
struct TYPE_2__ {int slot_shift; int /*<<< orphan*/  index; } ;

/* Variables and functions */
 size_t ER ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct qfq_group* FUNC1 (struct qfq_sched*,unsigned long) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC4(struct qfq_sched *q, struct qfq_aggregate *agg)
{
	unsigned long mask;
	u64 limit, roundedF;
	int slot_shift = agg->grp->slot_shift;

	roundedF = FUNC3(agg->F, slot_shift);
	limit = FUNC3(q->V, slot_shift) + (1ULL << slot_shift);

	if (!FUNC2(agg->F, q->V) || FUNC2(roundedF, limit)) {
		/* timestamp was stale */
		mask = FUNC0(q->bitmaps[ER], agg->grp->index);
		if (mask) {
			struct qfq_group *next = FUNC1(q, mask);
			if (FUNC2(roundedF, next->F)) {
				if (FUNC2(limit, next->F))
					agg->S = next->F;
				else /* preserve timestamp correctness */
					agg->S = limit;
				return;
			}
		}
		agg->S = q->V;
	} else  /* timestamp is not stale */
		agg->S = agg->F;
}
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
struct qfq_sched {int /*<<< orphan*/ * bitmaps; int /*<<< orphan*/  V; int /*<<< orphan*/  oldV; } ;
struct qfq_group {scalar_t__ F; unsigned long long slot_shift; scalar_t__ S; int /*<<< orphan*/  index; } ;
struct qfq_aggregate {int /*<<< orphan*/  S; } ;

/* Variables and functions */
 size_t ER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (struct qfq_sched*,struct qfq_group*) ; 
 struct qfq_group* FUNC3 (struct qfq_sched*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qfq_group*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,unsigned long long) ; 
 struct qfq_aggregate* FUNC6 (struct qfq_group*) ; 
 struct qfq_aggregate* FUNC7 (struct qfq_group*) ; 
 int /*<<< orphan*/  FUNC8 (struct qfq_sched*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct qfq_sched*) ; 

__attribute__((used)) static struct qfq_aggregate *FUNC10(struct qfq_sched *q)
{
	struct qfq_group *grp;
	struct qfq_aggregate *agg, *new_front_agg;
	u64 old_F;

	FUNC9(q);
	q->oldV = q->V;

	if (!q->bitmaps[ER])
		return NULL;

	grp = FUNC3(q, q->bitmaps[ER]);
	old_F = grp->F;

	agg = FUNC6(grp);

	/* agg starts to be served, remove it from schedule */
	FUNC4(grp);

	new_front_agg = FUNC7(grp);

	if (new_front_agg == NULL) /* group is now inactive, remove from ER */
		FUNC0(grp->index, &q->bitmaps[ER]);
	else {
		u64 roundedS = FUNC5(new_front_agg->S,
					      grp->slot_shift);
		unsigned int s;

		if (grp->S == roundedS)
			return agg;
		grp->S = roundedS;
		grp->F = roundedS + (2ULL << grp->slot_shift);
		FUNC0(grp->index, &q->bitmaps[ER]);
		s = FUNC2(q, grp);
		FUNC1(grp->index, &q->bitmaps[s]);
	}

	FUNC8(q, grp->index, old_F);

	return agg;
}
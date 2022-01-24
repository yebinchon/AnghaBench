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
struct hmm_range {int valid; struct hmm* hmm; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;
struct hmm {TYPE_1__ mmu_notifier; int /*<<< orphan*/  ranges_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  POISON_INUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hmm**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct hmm_range *range)
{
	struct hmm *hmm = range->hmm;
	unsigned long flags;

	FUNC3(&hmm->ranges_lock, flags);
	FUNC0(&range->list);
	FUNC4(&hmm->ranges_lock, flags);

	/* Drop reference taken by hmm_range_register() */
	FUNC2(hmm->mmu_notifier.mm);

	/*
	 * The range is now invalid and the ref on the hmm is dropped, so
	 * poison the pointer.  Leave other fields in place, for the caller's
	 * use.
	 */
	range->valid = false;
	FUNC1(&range->hmm, POISON_INUSE, sizeof(range->hmm));
}
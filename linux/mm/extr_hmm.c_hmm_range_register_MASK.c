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
struct hmm_range {int valid; int start; int end; int /*<<< orphan*/  list; struct hmm* hmm; } ;
struct hmm_mirror {struct hmm* hmm; } ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;
struct hmm {int /*<<< orphan*/  ranges_lock; int /*<<< orphan*/  notifiers; int /*<<< orphan*/  ranges; TYPE_1__ mmu_notifier; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct hmm_range *range, struct hmm_mirror *mirror)
{
	struct hmm *hmm = mirror->hmm;
	unsigned long flags;

	range->valid = false;
	range->hmm = NULL;

	if ((range->start & (PAGE_SIZE - 1)) || (range->end & (PAGE_SIZE - 1)))
		return -EINVAL;
	if (range->start >= range->end)
		return -EINVAL;

	/* Prevent hmm_release() from running while the range is valid */
	if (!FUNC1(hmm->mmu_notifier.mm))
		return -EFAULT;

	/* Initialize range to track CPU page table updates. */
	FUNC2(&hmm->ranges_lock, flags);

	range->hmm = hmm;
	FUNC0(&range->list, &hmm->ranges);

	/*
	 * If there are any concurrent notifiers we have to wait for them for
	 * the range to be valid (see hmm_range_wait_until_valid()).
	 */
	if (!hmm->notifiers)
		range->valid = true;
	FUNC3(&hmm->ranges_lock, flags);

	return 0;
}
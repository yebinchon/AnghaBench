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
struct inode {int dummy; } ;
struct bdi_writeback {scalar_t__ dirty_exceeded; } ;
struct backing_dev_info {struct bdi_writeback wb; } ;
struct address_space {struct inode* host; } ;
struct TYPE_2__ {int nr_dirtied_pause; int nr_dirtied; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct bdi_writeback*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct backing_dev_info*) ; 
 int /*<<< orphan*/  bdp_ratelimits ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  dirty_throttle_leaks ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 struct backing_dev_info* FUNC3 (struct inode*) ; 
 void* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int ratelimit_pages ; 
 int* FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 struct bdi_writeback* FUNC9 (struct backing_dev_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct bdi_writeback*) ; 

void FUNC11(struct address_space *mapping)
{
	struct inode *inode = mapping->host;
	struct backing_dev_info *bdi = FUNC3(inode);
	struct bdi_writeback *wb = NULL;
	int ratelimit;
	int *p;

	if (!FUNC1(bdi))
		return;

	if (FUNC2(inode))
		wb = FUNC9(bdi, GFP_KERNEL);
	if (!wb)
		wb = &bdi->wb;

	ratelimit = current->nr_dirtied_pause;
	if (wb->dirty_exceeded)
		ratelimit = FUNC4(ratelimit, 32 >> (PAGE_SHIFT - 10));

	FUNC5();
	/*
	 * This prevents one CPU to accumulate too many dirtied pages without
	 * calling into balance_dirty_pages(), which can happen when there are
	 * 1000+ tasks, all of them start dirtying pages at exactly the same
	 * time, hence all honoured too large initial task->nr_dirtied_pause.
	 */
	p =  FUNC7(&bdp_ratelimits);
	if (FUNC8(current->nr_dirtied >= ratelimit))
		*p = 0;
	else if (FUNC8(*p >= ratelimit_pages)) {
		*p = 0;
		ratelimit = 0;
	}
	/*
	 * Pick up the dirtied pages by the exited tasks. This avoids lots of
	 * short-lived tasks (eg. gcc invocations in a kernel build) escaping
	 * the dirty throttling and livelock other long-run dirtiers.
	 */
	p = FUNC7(&dirty_throttle_leaks);
	if (*p > 0 && current->nr_dirtied < ratelimit) {
		unsigned long nr_pages_dirtied;
		nr_pages_dirtied = FUNC4(*p, ratelimit - current->nr_dirtied);
		*p -= nr_pages_dirtied;
		current->nr_dirtied += nr_pages_dirtied;
	}
	FUNC6();

	if (FUNC8(current->nr_dirtied >= ratelimit))
		FUNC0(wb, current->nr_dirtied);

	FUNC10(wb);
}
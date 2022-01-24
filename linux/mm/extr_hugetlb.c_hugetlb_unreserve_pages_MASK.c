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
struct resv_map {int dummy; } ;
struct inode {long i_blocks; int /*<<< orphan*/  i_lock; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;

/* Variables and functions */
 long FUNC0 (struct hstate*) ; 
 struct hstate* FUNC1 (struct inode*) ; 
 long FUNC2 (struct hugepage_subpool*,long) ; 
 int /*<<< orphan*/  FUNC3 (struct hstate*,long) ; 
 struct resv_map* FUNC4 (struct inode*) ; 
 long FUNC5 (struct resv_map*,long,long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct hugepage_subpool* FUNC8 (struct inode*) ; 

long FUNC9(struct inode *inode, long start, long end,
								long freed)
{
	struct hstate *h = FUNC1(inode);
	struct resv_map *resv_map = FUNC4(inode);
	long chg = 0;
	struct hugepage_subpool *spool = FUNC8(inode);
	long gbl_reserve;

	/*
	 * Since this routine can be called in the evict inode path for all
	 * hugetlbfs inodes, resv_map could be NULL.
	 */
	if (resv_map) {
		chg = FUNC5(resv_map, start, end);
		/*
		 * region_del() can fail in the rare case where a region
		 * must be split and another region descriptor can not be
		 * allocated.  If end == LONG_MAX, it will not fail.
		 */
		if (chg < 0)
			return chg;
	}

	FUNC6(&inode->i_lock);
	inode->i_blocks -= (FUNC0(h) * freed);
	FUNC7(&inode->i_lock);

	/*
	 * If the subpool has a minimum size, the number of global
	 * reservations to be released may be adjusted.
	 */
	gbl_reserve = FUNC2(spool, (chg - freed));
	FUNC3(h, -gbl_reserve);

	return 0;
}
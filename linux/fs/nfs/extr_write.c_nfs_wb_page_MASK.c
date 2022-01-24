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
struct writeback_control {scalar_t__ range_end; scalar_t__ range_start; int /*<<< orphan*/  nr_to_write; int /*<<< orphan*/  sync_mode; } ;
struct page {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FLUSH_SYNC ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  WB_SYNC_ALL ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct page*,struct writeback_control*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

int FUNC8(struct inode *inode, struct page *page)
{
	loff_t range_start = FUNC4(page);
	loff_t range_end = range_start + (loff_t)(PAGE_SIZE - 1);
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_ALL,
		.nr_to_write = 0,
		.range_start = range_start,
		.range_end = range_end,
	};
	int ret;

	FUNC5(inode);

	for (;;) {
		FUNC7(page);
		if (FUNC1(page)) {
			ret = FUNC3(page, &wbc);
			if (ret < 0)
				goto out_error;
			continue;
		}
		ret = 0;
		if (!FUNC0(page))
			break;
		ret = FUNC2(inode, FLUSH_SYNC);
		if (ret < 0)
			goto out_error;
	}
out_error:
	FUNC6(inode, ret);
	return ret;
}
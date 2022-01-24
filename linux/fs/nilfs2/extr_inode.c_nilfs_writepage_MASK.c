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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_reclaim; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int EROFS ; 
 scalar_t__ WB_SYNC_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct page*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct writeback_control*,struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 

__attribute__((used)) static int FUNC7(struct page *page, struct writeback_control *wbc)
{
	struct inode *inode = page->mapping->host;
	int err;

	if (FUNC4(inode->i_sb)) {
		/*
		 * It means that filesystem was remounted in read-only
		 * mode because of error or metadata corruption. But we
		 * have dirty pages that try to be flushed in background.
		 * So, here we simply discard this dirty page.
		 */
		FUNC0(page, false);
		FUNC6(page);
		return -EROFS;
	}

	FUNC3(wbc, page);
	FUNC6(page);

	if (wbc->sync_mode == WB_SYNC_ALL) {
		err = FUNC1(inode->i_sb);
		if (FUNC5(err))
			return err;
	} else if (wbc->for_reclaim)
		FUNC2(inode->i_sb, inode->i_ino);

	return 0;
}
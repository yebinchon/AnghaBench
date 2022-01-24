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
struct page {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int DEFAULT_RETRY_IO_COUNT ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 struct page* FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 

struct page *FUNC4(struct f2fs_sb_info *sbi, pgoff_t index)
{
	struct page *page;
	int count = 0;

retry:
	page = FUNC2(sbi, index, true);
	if (FUNC0(page)) {
		if (FUNC1(page) == -EIO &&
				++count <= DEFAULT_RETRY_IO_COUNT)
			goto retry;
		FUNC3(sbi, false);
	}
	return page;
}
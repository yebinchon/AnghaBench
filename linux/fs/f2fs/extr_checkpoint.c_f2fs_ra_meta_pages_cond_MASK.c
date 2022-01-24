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
 int /*<<< orphan*/  BIO_MAX_PAGES ; 
 int /*<<< orphan*/  FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  META_POR ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(struct f2fs_sb_info *sbi, pgoff_t index)
{
	struct page *page;
	bool readahead = false;

	page = FUNC4(FUNC0(sbi), index);
	if (!page || !FUNC1(page))
		readahead = true;
	FUNC2(page, 0);

	if (readahead)
		FUNC3(sbi, index, BIO_MAX_PAGES, META_POR, true);
}
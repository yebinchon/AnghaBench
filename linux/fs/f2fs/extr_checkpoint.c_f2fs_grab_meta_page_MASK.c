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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  META ; 
 struct address_space* FUNC0 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ,int,int) ; 

struct page *FUNC6(struct f2fs_sb_info *sbi, pgoff_t index)
{
	struct address_space *mapping = FUNC0(sbi);
	struct page *page = NULL;
repeat:
	page = FUNC4(mapping, index, false);
	if (!page) {
		FUNC3();
		goto repeat;
	}
	FUNC5(page, META, true, true);
	if (!FUNC1(page))
		FUNC2(page);
	return page;
}
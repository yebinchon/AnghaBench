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
typedef  enum page_type { ____Placeholder_page_type } page_type ;

/* Variables and functions */
 struct f2fs_sb_info* FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 

void FUNC6(struct page *page,
				enum page_type type, bool ordered, bool locked)
{
	if (FUNC1(page)) {
		struct f2fs_sb_info *sbi = FUNC0(page);

		FUNC3(sbi, NULL, page, 0, type);
		if (ordered) {
			FUNC5(page);
			FUNC2(sbi, locked && FUNC1(page));
		} else {
			FUNC4(page);
		}
	}
}
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
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int) ; 
 struct page* FUNC4 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, pgoff_t index,
					loff_t start, loff_t len)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct page *page;

	if (!len)
		return 0;

	FUNC3(sbi, true);

	FUNC5(sbi);
	page = FUNC4(inode, NULL, index, false);
	FUNC7(sbi);

	if (FUNC1(page))
		return FUNC2(page);

	FUNC8(page, DATA, true, true);
	FUNC10(page, start, len);
	FUNC9(page);
	FUNC6(page, 1);
	return 0;
}
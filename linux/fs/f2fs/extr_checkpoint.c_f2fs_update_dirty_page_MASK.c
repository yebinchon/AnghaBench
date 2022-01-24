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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct f2fs_sb_info {int /*<<< orphan*/ * inode_lock; } ;
typedef  enum inode_type { ____Placeholder_inode_type } inode_type ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_FLUSH ; 
 int DIR_INODE ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int FILE_INODE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 

void FUNC11(struct inode *inode, struct page *page)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	enum inode_type type = FUNC1(inode->i_mode) ? DIR_INODE : FILE_INODE;

	if (!FUNC1(inode->i_mode) && !FUNC3(inode->i_mode) &&
			!FUNC2(inode->i_mode))
		return;

	FUNC8(&sbi->inode_lock[type]);
	if (type != FILE_INODE || FUNC10(sbi, DATA_FLUSH))
		FUNC4(inode, type);
	FUNC7(inode);
	FUNC9(&sbi->inode_lock[type]);

	FUNC5(page, 0);
	FUNC6(page);
}
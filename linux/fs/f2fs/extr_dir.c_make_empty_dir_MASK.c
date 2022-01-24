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
struct f2fs_dentry_ptr {int dummy; } ;
struct f2fs_dentry_block {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 int FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct inode*,struct f2fs_dentry_ptr*) ; 
 struct page* FUNC3 (struct inode*,struct page*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct inode*) ; 
 int FUNC5 (struct inode*,struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct f2fs_dentry_ptr*,struct f2fs_dentry_block*) ; 
 struct f2fs_dentry_block* FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 

__attribute__((used)) static int FUNC10(struct inode *inode,
		struct inode *parent, struct page *page)
{
	struct page *dentry_page;
	struct f2fs_dentry_block *dentry_blk;
	struct f2fs_dentry_ptr d;

	if (FUNC4(inode))
		return FUNC5(inode, parent, page);

	dentry_page = FUNC3(inode, page, 0, true);
	if (FUNC0(dentry_page))
		return FUNC1(dentry_page);

	dentry_blk = FUNC8(dentry_page);

	FUNC7(NULL, &d, dentry_blk);
	FUNC2(inode, parent, &d);

	FUNC9(dentry_page);
	FUNC6(dentry_page, 1);
	return 0;
}
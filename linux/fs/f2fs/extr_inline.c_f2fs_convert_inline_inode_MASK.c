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
struct inode {int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_mapping; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int /*<<< orphan*/  node_changed; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct dnode_of_data*,struct page*) ; 
 struct page* FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct dnode_of_data*,struct inode*,struct page*,struct page*,int /*<<< orphan*/ ) ; 

int FUNC13(struct inode *inode)
{
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct dnode_of_data dn;
	struct page *ipage, *page;
	int err = 0;

	if (!FUNC7(inode))
		return 0;

	page = FUNC6(inode->i_mapping, 0, false);
	if (!page)
		return -ENOMEM;

	FUNC8(sbi);

	ipage = FUNC5(sbi, inode->i_ino);
	if (FUNC1(ipage)) {
		err = FUNC2(ipage);
		goto out;
	}

	FUNC12(&dn, inode, ipage, ipage, 0);

	if (FUNC7(inode))
		err = FUNC4(&dn, page);

	FUNC9(&dn);
out:
	FUNC11(sbi);

	FUNC10(page, 1);

	FUNC3(sbi, dn.node_changed);

	return err;
}
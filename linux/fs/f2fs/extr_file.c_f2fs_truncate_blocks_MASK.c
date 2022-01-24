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
typedef  int /*<<< orphan*/  u64 ;
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {scalar_t__ max_file_blocks; } ;
struct dnode_of_data {int /*<<< orphan*/  node_page; scalar_t__ ofs_in_node; } ;
typedef  scalar_t__ pgoff_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct inode*) ; 
 int ENOENT ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOOKUP_NODE_RA ; 
 int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int) ; 
 int FUNC7 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct dnode_of_data*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,struct page*,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct dnode_of_data*,struct inode*,struct page*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int) ; 
 int FUNC20 (struct inode*,int /*<<< orphan*/ ,int) ; 

int FUNC21(struct inode *inode, u64 from, bool lock)
{
	struct f2fs_sb_info *sbi = FUNC2(inode);
	struct dnode_of_data dn;
	pgoff_t free_from;
	int count = 0, err = 0;
	struct page *ipage;
	bool truncate_page = false;

	FUNC18(inode, from);

	free_from = (pgoff_t)FUNC1(from);

	if (free_from >= sbi->max_file_blocks)
		goto free_partial;

	if (lock)
		FUNC10(sbi);

	ipage = FUNC8(sbi, inode->i_ino);
	if (FUNC3(ipage)) {
		err = FUNC5(ipage);
		goto out;
	}

	if (FUNC9(inode)) {
		FUNC14(inode, ipage, from);
		FUNC12(ipage, 1);
		truncate_page = true;
		goto out;
	}

	FUNC17(&dn, inode, ipage, NULL, 0);
	err = FUNC7(&dn, free_from, LOOKUP_NODE_RA);
	if (err) {
		if (err == -ENOENT)
			goto free_next;
		goto out;
	}

	count = FUNC0(dn.node_page, inode);

	count -= dn.ofs_in_node;
	FUNC6(sbi, count < 0);

	if (dn.ofs_in_node || FUNC4(dn.node_page)) {
		FUNC13(&dn, count);
		free_from += count;
	}

	FUNC11(&dn);
free_next:
	err = FUNC15(inode, free_from);
out:
	if (lock)
		FUNC16(sbi);
free_partial:
	/* lastly zero out the first data page */
	if (!err)
		err = FUNC20(inode, from, truncate_page);

	FUNC19(inode, err);
	return err;
}
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
struct page {int dummy; } ;
struct node_info {int /*<<< orphan*/  blk_addr; } ;
struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef  int /*<<< orphan*/  nid_t ;
struct TYPE_2__ {int /*<<< orphan*/  i_xattr_nid; } ;

/* Variables and functions */
 int ENOSPC ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct f2fs_sb_info* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  NULL_ADDR ; 
 int FUNC4 (struct page*) ; 
 int /*<<< orphan*/  VALID_XATTR_BLOCK_SIZE ; 
 int /*<<< orphan*/  XATTR_NODE_OFFSET ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,struct inode*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct f2fs_sb_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (struct dnode_of_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,struct node_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 

int FUNC18(struct inode *inode, struct page *page)
{
	struct f2fs_sb_info *sbi = FUNC1(inode);
	nid_t prev_xnid = FUNC0(inode)->i_xattr_nid;
	nid_t new_xnid;
	struct dnode_of_data dn;
	struct node_info ni;
	struct page *xpage;
	int err;

	if (!prev_xnid)
		goto recover_xnid;

	/* 1: invalidate the previous xattr nid */
	err = FUNC9(sbi, prev_xnid, &ni);
	if (err)
		return err;

	FUNC10(sbi, ni.blk_addr);
	FUNC5(sbi, inode, false);
	FUNC16(sbi, &ni, NULL_ADDR, false);

recover_xnid:
	/* 2: update xattr nid in inode */
	if (!FUNC6(sbi, &new_xnid))
		return -ENOSPC;

	FUNC15(&dn, inode, NULL, NULL, new_xnid);
	xpage = FUNC11(&dn, XATTR_NODE_OFFSET);
	if (FUNC3(xpage)) {
		FUNC8(sbi, new_xnid);
		return FUNC4(xpage);
	}

	FUNC7(sbi, new_xnid);
	FUNC13(inode);

	/* 3: update and set xattr node page dirty */
	FUNC14(FUNC2(xpage), FUNC2(page), VALID_XATTR_BLOCK_SIZE);

	FUNC17(xpage);
	FUNC12(xpage, 1);

	return 0;
}
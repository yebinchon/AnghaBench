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
struct node_info {scalar_t__ ino; int /*<<< orphan*/  version; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {struct page* node_page; int /*<<< orphan*/  nid; int /*<<< orphan*/  ofs_in_node; int /*<<< orphan*/  inode; } ;
typedef  int loff_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct page*,struct inode*) ; 
 int /*<<< orphan*/  ALLOC_NODE ; 
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  CONFIG_F2FS_FAULT_INJECTION ; 
 int EFSCORRUPTED ; 
 int ENOMEM ; 
 int HZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  META_POR ; 
 scalar_t__ NEW_ADDR ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ NULL_ADDR ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (struct f2fs_sb_info*,scalar_t__,struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct page*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int) ; 
 int FUNC9 (struct dnode_of_data*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct f2fs_sb_info*,int /*<<< orphan*/ ,struct node_info*) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*,int) ; 
 scalar_t__ FUNC13 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct dnode_of_data*) ; 
 scalar_t__ FUNC16 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct page*) ; 
 int FUNC18 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*,struct dnode_of_data*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int) ; 
 int FUNC20 (struct dnode_of_data*) ; 
 unsigned int FUNC21 (scalar_t__,struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct dnode_of_data*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_sb_info*,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (struct inode*) ; 
 int /*<<< orphan*/  FUNC26 (struct page*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 int FUNC27 (struct inode*) ; 
 scalar_t__ FUNC28 (struct page*) ; 
 scalar_t__ FUNC29 (struct page*) ; 
 int /*<<< orphan*/  FUNC30 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 

__attribute__((used)) static int FUNC32(struct f2fs_sb_info *sbi, struct inode *inode,
					struct page *page)
{
	struct dnode_of_data dn;
	struct node_info ni;
	unsigned int start, end;
	int err = 0, recovered = 0;

	/* step 1: recover xattr */
	if (FUNC2(page)) {
		FUNC17(inode, page);
	} else if (FUNC11(FUNC29(page))) {
		err = FUNC18(inode, page);
		if (!err)
			recovered++;
		goto out;
	}

	/* step 2: recover inline data */
	if (FUNC16(inode, page))
		goto out;

	/* step 3: recover data indices */
	start = FUNC21(FUNC29(page), inode);
	end = start + FUNC0(page, inode);

	FUNC30(&dn, inode, NULL, NULL, 0);
retry_dn:
	err = FUNC9(&dn, start, ALLOC_NODE);
	if (err) {
		if (err == -ENOMEM) {
			FUNC5(BLK_RW_ASYNC, HZ/50);
			goto retry_dn;
		}
		goto out;
	}

	FUNC23(dn.node_page, NODE, true, true);

	err = FUNC10(sbi, dn.nid, &ni);
	if (err)
		goto err;

	FUNC8(sbi, ni.ino != FUNC28(page));

	if (FUNC29(dn.node_page) != FUNC29(page)) {
		FUNC24(sbi, "Inconsistent ofs_of_node, ino:%lu, ofs:%u, %u",
			  inode->i_ino, FUNC29(dn.node_page),
			  FUNC29(page));
		err = -EFSCORRUPTED;
		goto err;
	}

	for (; start < end; start++, dn.ofs_in_node++) {
		block_t src, dest;

		src = FUNC7(dn.inode, dn.node_page, dn.ofs_in_node);
		dest = FUNC7(dn.inode, page, dn.ofs_in_node);

		if (FUNC3(src) &&
			!FUNC13(sbi, src, META_POR)) {
			err = -EFSCORRUPTED;
			goto err;
		}

		if (FUNC3(dest) &&
			!FUNC13(sbi, dest, META_POR)) {
			err = -EFSCORRUPTED;
			goto err;
		}

		/* skip recovering if dest is the same as src */
		if (src == dest)
			continue;

		/* dest is invalid, just invalidate src block */
		if (dest == NULL_ADDR) {
			FUNC22(&dn, 1);
			continue;
		}

		if (!FUNC25(inode) &&
			(FUNC27(inode) <= ((loff_t)start << PAGE_SHIFT)))
			FUNC12(inode,
				(loff_t)(start + 1) << PAGE_SHIFT);

		/*
		 * dest is reserved block, invalidate src block
		 * and then reserve one new block in dnode page.
		 */
		if (dest == NEW_ADDR) {
			FUNC22(&dn, 1);
			FUNC20(&dn);
			continue;
		}

		/* dest is valid block, try to recover from src to dest */
		if (FUNC13(sbi, dest, META_POR)) {

			if (src == NULL_ADDR) {
				err = FUNC20(&dn);
				while (err &&
				       FUNC1(CONFIG_F2FS_FAULT_INJECTION))
					err = FUNC20(&dn);
				/* We should not get -ENOSPC */
				FUNC8(sbi, err);
				if (err)
					goto err;
			}
retry_prev:
			/* Check the previous node page having this index */
			err = FUNC4(sbi, dest, &dn);
			if (err) {
				if (err == -ENOMEM) {
					FUNC5(BLK_RW_ASYNC, HZ/50);
					goto retry_prev;
				}
				goto err;
			}

			/* write dummy data page */
			FUNC19(sbi, &dn, src, dest,
						ni.version, false, false);
			recovered++;
		}
	}

	FUNC6(dn.node_page, page);
	FUNC26(dn.node_page, dn.nid, ni.ino,
					FUNC29(page), false);
	FUNC31(dn.node_page);
err:
	FUNC15(&dn);
out:
	FUNC14(sbi, "recover_data: ino = %lx (i_size: %s) recovered = %d, err = %d",
		    inode->i_ino, FUNC25(inode) ? "keep" : "recover",
		    recovered, err);
	return err;
}
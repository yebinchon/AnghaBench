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
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct extent_info {scalar_t__ blk; scalar_t__ fofs; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; int node_changed; } ;
typedef  scalar_t__ pgoff_t ;
typedef  int loff_t ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int F2FS_GET_BLOCK_DEFAULT ; 
 int F2FS_GET_BLOCK_PRE_AIO ; 
 int /*<<< orphan*/  FI_DATA_EXIST ; 
 int /*<<< orphan*/  FI_NO_PREALLOC ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 unsigned int FUNC1 (struct inode*) ; 
 scalar_t__ NULL_ADDR ; 
 int PAGE_MASK ; 
 unsigned int PAGE_SIZE ; 
 int FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int,int) ; 
 int FUNC5 (struct dnode_of_data*,struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*,struct page*) ; 
 int FUNC7 (struct dnode_of_data*,scalar_t__) ; 
 int FUNC8 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC9 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct inode*) ; 
 scalar_t__ FUNC11 (struct inode*,scalar_t__,struct extent_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct dnode_of_data*,struct inode*,struct page*,struct page*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC19(struct f2fs_sb_info *sbi,
			struct page *page, loff_t pos, unsigned len,
			block_t *blk_addr, bool *node_changed)
{
	struct inode *inode = page->mapping->host;
	pgoff_t index = page->index;
	struct dnode_of_data dn;
	struct page *ipage;
	bool locked = false;
	struct extent_info ei = {0,0,0};
	int err = 0;
	int flag;

	/*
	 * we already allocated all the blocks, so we don't need to get
	 * the block addresses when there is no need to fill the page.
	 */
	if (!FUNC10(inode) && len == PAGE_SIZE &&
	    !FUNC15(inode, FI_NO_PREALLOC) &&
	    !FUNC13(inode))
		return 0;

	/* f2fs_lock_op avoids race between write CP and convert_inline_page */
	if (FUNC10(inode) && pos + len > FUNC1(inode))
		flag = F2FS_GET_BLOCK_DEFAULT;
	else
		flag = F2FS_GET_BLOCK_PRE_AIO;

	if (FUNC10(inode) ||
			(pos & PAGE_MASK) >= FUNC14(inode)) {
		FUNC4(sbi, flag, true);
		locked = true;
	}
restart:
	/* check inline_data */
	ipage = FUNC9(sbi, inode->i_ino);
	if (FUNC0(ipage)) {
		err = FUNC2(ipage);
		goto unlock_out;
	}

	FUNC18(&dn, inode, ipage, ipage, 0);

	if (FUNC10(inode)) {
		if (pos + len <= FUNC1(inode)) {
			FUNC6(page, ipage);
			FUNC17(inode, FI_DATA_EXIST);
			if (inode->i_nlink)
				FUNC16(ipage);
		} else {
			err = FUNC5(&dn, page);
			if (err)
				goto out;
			if (dn.data_blkaddr == NULL_ADDR)
				err = FUNC7(&dn, index);
		}
	} else if (locked) {
		err = FUNC7(&dn, index);
	} else {
		if (FUNC11(inode, index, &ei)) {
			dn.data_blkaddr = ei.blk + index - ei.fofs;
		} else {
			/* hole case */
			err = FUNC8(&dn, index, LOOKUP_NODE);
			if (err || dn.data_blkaddr == NULL_ADDR) {
				FUNC12(&dn);
				FUNC4(sbi, F2FS_GET_BLOCK_PRE_AIO,
								true);
				FUNC3(flag != F2FS_GET_BLOCK_PRE_AIO);
				locked = true;
				goto restart;
			}
		}
	}

	/* convert_inline_page can make node_changed */
	*blk_addr = dn.data_blkaddr;
	*node_changed = dn.node_changed;
out:
	FUNC12(&dn);
unlock_out:
	if (locked)
		FUNC4(sbi, flag, false);
	return err;
}
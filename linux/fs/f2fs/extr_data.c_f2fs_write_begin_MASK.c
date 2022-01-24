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
struct page {struct address_space* mapping; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ pgoff_t ;
typedef  unsigned int loff_t ;
typedef  scalar_t__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE_READ ; 
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOMEM ; 
 int ENOSPC ; 
 struct f2fs_sb_info* FUNC0 (struct inode*) ; 
 int FGP_CREAT ; 
 int FGP_LOCK ; 
 int FGP_WRITE ; 
 int /*<<< orphan*/  FI_ATOMIC_REVOKE_REQUEST ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  INMEM_PAGES ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 scalar_t__ NEW_ADDR ; 
 scalar_t__ NULL_ADDR ; 
 unsigned long long PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int) ; 
 int FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct page* FUNC11 (struct address_space*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct page*,int) ; 
 int FUNC13 (struct inode*,struct page*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct address_space*,unsigned int) ; 
 scalar_t__ FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC18 (struct inode*) ; 
 scalar_t__ FUNC19 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int FUNC21 (struct f2fs_sb_info*,struct page*,unsigned int,unsigned int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC23 (int) ; 
 int /*<<< orphan*/  FUNC24 (struct page*) ; 
 int /*<<< orphan*/  FUNC25 (struct page*,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC26(struct file *file, struct address_space *mapping,
		loff_t pos, unsigned len, unsigned flags,
		struct page **pagep, void **fsdata)
{
	struct inode *inode = mapping->host;
	struct f2fs_sb_info *sbi = FUNC0(inode);
	struct page *page = NULL;
	pgoff_t index = ((unsigned long long) pos) >> PAGE_SHIFT;
	bool need_balance = false, drop_atomic = false;
	block_t blkaddr = NULL_ADDR;
	int err = 0;

	FUNC22(inode, pos, len, flags);

	if (!FUNC9(sbi)) {
		err = -ENOSPC;
		goto fail;
	}

	if ((FUNC8(inode) &&
			!FUNC4(sbi, INMEM_PAGES)) ||
			FUNC19(inode, FI_ATOMIC_REVOKE_REQUEST)) {
		err = -ENOMEM;
		drop_atomic = true;
		goto fail;
	}

	/*
	 * We should check this at this moment to avoid deadlock on inode page
	 * and #0 page. The locking rule for inline_data conversion should be:
	 * lock_page(page #0) -> lock_page(inode_page)
	 */
	if (index != 0) {
		err = FUNC6(inode);
		if (err)
			goto fail;
	}
repeat:
	/*
	 * Do not use grab_cache_page_write_begin() to avoid deadlock due to
	 * wait_for_stable_page. Will wait that below with our IO control.
	 */
	page = FUNC11(mapping, index,
				FGP_LOCK | FGP_WRITE | FGP_CREAT, GFP_NOFS);
	if (!page) {
		err = -ENOMEM;
		goto fail;
	}

	*pagep = page;

	err = FUNC21(sbi, page, pos, len,
					&blkaddr, &need_balance);
	if (err)
		goto fail;

	if (need_balance && !FUNC1(inode) &&
			FUNC17(sbi, 0, 0)) {
		FUNC24(page);
		FUNC5(sbi, true);
		FUNC20(page);
		if (page->mapping != mapping) {
			/* The page got truncated from under us */
			FUNC12(page, 1);
			goto repeat;
		}
	}

	FUNC15(page, DATA, false, true);

	if (len == PAGE_SIZE || FUNC2(page))
		return 0;

	if (!(pos & (PAGE_SIZE - 1)) && (pos + len) >= FUNC18(inode) &&
	    !FUNC14(inode)) {
		FUNC25(page, len, PAGE_SIZE);
		return 0;
	}

	if (blkaddr == NEW_ADDR) {
		FUNC25(page, 0, PAGE_SIZE);
		FUNC3(page);
	} else {
		if (!FUNC10(sbi, blkaddr,
				DATA_GENERIC_ENHANCE_READ)) {
			err = -EFSCORRUPTED;
			goto fail;
		}
		err = FUNC13(inode, page, blkaddr);
		if (err)
			goto fail;

		FUNC20(page);
		if (FUNC23(page->mapping != mapping)) {
			FUNC12(page, 1);
			goto repeat;
		}
		if (FUNC23(!FUNC2(page))) {
			err = -EIO;
			goto fail;
		}
	}
	return 0;

fail:
	FUNC12(page, 1);
	FUNC16(mapping, pos + len);
	if (drop_atomic)
		FUNC7(sbi, false);
	return err;
}
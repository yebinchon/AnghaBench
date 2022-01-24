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
struct node_info {int /*<<< orphan*/  version; } ;
struct inode {int dummy; } ;
struct f2fs_io_info {scalar_t__ old_blkaddr; scalar_t__ need_lock; int /*<<< orphan*/  sbi; int /*<<< orphan*/  version; struct page* page; int /*<<< orphan*/  encrypted_page; } ;
struct extent_info {scalar_t__ blk; scalar_t__ fofs; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; int /*<<< orphan*/  nid; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int EAGAIN ; 
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  FI_APPEND_WRITE ; 
 int /*<<< orphan*/  FI_FIRST_BLOCK_WRITTEN ; 
 int /*<<< orphan*/  FI_UPDATE_WRITE ; 
 int /*<<< orphan*/  IPU ; 
 scalar_t__ LOCK_DONE ; 
 scalar_t__ LOCK_REQ ; 
 scalar_t__ LOCK_RETRY ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  OPU ; 
 scalar_t__ FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (struct inode*) ; 
 int FUNC8 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct node_info*) ; 
 int FUNC10 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct inode*,scalar_t__,struct extent_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct dnode_of_data*,struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC19 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct page*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int /*<<< orphan*/ ) ; 

int FUNC23(struct f2fs_io_info *fio)
{
	struct page *page = fio->page;
	struct inode *inode = page->mapping->host;
	struct dnode_of_data dn;
	struct extent_info ei = {0,0,0};
	struct node_info ni;
	bool ipu_force = false;
	int err = 0;

	FUNC20(&dn, inode, NULL, NULL, 0);
	if (FUNC18(fio) &&
			FUNC12(inode, page->index, &ei)) {
		fio->old_blkaddr = ei.blk + page->index - ei.fofs;

		if (!FUNC11(fio->sbi, fio->old_blkaddr,
						DATA_GENERIC_ENHANCE))
			return -EFSCORRUPTED;

		ipu_force = true;
		fio->need_lock = LOCK_DONE;
		goto got_it;
	}

	/* Deadlock due to between page->lock and f2fs_lock_op */
	if (fio->need_lock == LOCK_REQ && !FUNC15(fio->sbi))
		return -EAGAIN;

	err = FUNC8(&dn, page->index, LOOKUP_NODE);
	if (err)
		goto out;

	fio->old_blkaddr = dn.data_blkaddr;

	/* This page is already truncated */
	if (fio->old_blkaddr == NULL_ADDR) {
		FUNC1(page);
		FUNC4(page);
		goto out_writepage;
	}
got_it:
	if (FUNC3(fio->old_blkaddr) &&
		!FUNC11(fio->sbi, fio->old_blkaddr,
						DATA_GENERIC_ENHANCE)) {
		err = -EFSCORRUPTED;
		goto out_writepage;
	}
	/*
	 * If current allocation needs SSR,
	 * it had better in-place writes for updated data.
	 */
	if (ipu_force ||
		(FUNC3(fio->old_blkaddr) &&
					FUNC18(fio))) {
		err = FUNC5(fio);
		if (err)
			goto out_writepage;

		FUNC21(page);
		FUNC0(page);
		FUNC14(&dn);
		if (fio->need_lock == LOCK_REQ)
			FUNC16(fio->sbi);
		err = FUNC10(fio);
		if (err) {
			if (FUNC7(inode))
				FUNC17(&fio->encrypted_page);
			if (FUNC2(page))
				FUNC6(page);
		} else {
			FUNC19(inode, FI_UPDATE_WRITE);
		}
		FUNC22(fio->page, IPU);
		return err;
	}

	if (fio->need_lock == LOCK_RETRY) {
		if (!FUNC15(fio->sbi)) {
			err = -EAGAIN;
			goto out_writepage;
		}
		fio->need_lock = LOCK_REQ;
	}

	err = FUNC9(fio->sbi, dn.nid, &ni);
	if (err)
		goto out_writepage;

	fio->version = ni.version;

	err = FUNC5(fio);
	if (err)
		goto out_writepage;

	FUNC21(page);
	FUNC0(page);

	/* LFS mode write path */
	FUNC13(&dn, fio);
	FUNC22(page, OPU);
	FUNC19(inode, FI_APPEND_WRITE);
	if (page->index == 0)
		FUNC19(inode, FI_FIRST_BLOCK_WRITTEN);
out_writepage:
	FUNC14(&dn);
out:
	if (fio->need_lock == LOCK_REQ)
		FUNC16(fio->sbi);
	return err;
}
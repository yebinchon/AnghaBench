#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct page {scalar_t__ mapping; scalar_t__ index; } ;
struct node_info {int /*<<< orphan*/  version; } ;
struct inode {scalar_t__ i_mapping; int /*<<< orphan*/  i_ino; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_io_info {int in_list; int retry; scalar_t__ new_blkaddr; scalar_t__ old_blkaddr; TYPE_1__* sbi; struct page* encrypted_page; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  op; struct page* page; int /*<<< orphan*/  temp; int /*<<< orphan*/  type; int /*<<< orphan*/  ino; } ;
struct dnode_of_data {scalar_t__ data_blkaddr; struct page* node_page; int /*<<< orphan*/  ofs_in_node; int /*<<< orphan*/  nid; } ;
typedef  scalar_t__ block_t ;
struct TYPE_12__ {int /*<<< orphan*/  io_order_lock; int /*<<< orphan*/ * skipped_atomic_files; } ;
struct TYPE_11__ {int /*<<< orphan*/ * i_gc_failures; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLD ; 
 int /*<<< orphan*/  CURSEG_COLD_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  DATA ; 
 int EAGAIN ; 
 int EIO ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  F2FS_BLKSIZE ; 
 int /*<<< orphan*/  F2FS_DIRTY_META ; 
 TYPE_10__* FUNC2 (struct inode*) ; 
 TYPE_1__* FUNC3 (struct inode*) ; 
 int FGP_CREAT ; 
 int FGP_LOCK ; 
 int /*<<< orphan*/  FI_APPEND_WRITE ; 
 int /*<<< orphan*/  FI_FIRST_BLOCK_WRITTEN ; 
 int /*<<< orphan*/  FS_GC_DATA_IO ; 
 size_t GC_FAILURE_ATOMIC ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  LOOKUP_NODE ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ NULL_ADDR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 scalar_t__ FUNC6 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,unsigned int,int) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,struct f2fs_summary*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,struct f2fs_summary*,scalar_t__,scalar_t__,int,int) ; 
 int FUNC14 (struct dnode_of_data*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ ,struct node_info*) ; 
 struct page* FUNC16 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC17 (struct inode*) ; 
 scalar_t__ FUNC18 (struct inode*) ; 
 struct page* FUNC19 (scalar_t__,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC21 (struct dnode_of_data*) ; 
 int /*<<< orphan*/  FUNC22 (struct page*,int) ; 
 int FUNC23 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC25 (struct dnode_of_data*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct inode*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC29 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC30 (struct page*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (struct page*) ; 
 int /*<<< orphan*/  FUNC33 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC34 (struct dnode_of_data*,struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (struct page*) ; 
 int /*<<< orphan*/  FUNC36 (struct page*) ; 
 int /*<<< orphan*/  FUNC37 (struct f2fs_summary*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC38 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC39 (int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC41(struct inode *inode, block_t bidx,
				int gc_type, unsigned int segno, int off)
{
	struct f2fs_io_info fio = {
		.sbi = FUNC3(inode),
		.ino = inode->i_ino,
		.type = DATA,
		.temp = COLD,
		.op = REQ_OP_READ,
		.op_flags = 0,
		.encrypted_page = NULL,
		.in_list = false,
		.retry = false,
	};
	struct dnode_of_data dn;
	struct f2fs_summary sum;
	struct node_info ni;
	struct page *page, *mpage;
	block_t newaddr;
	int err = 0;
	bool lfs_mode = FUNC38(fio.sbi, LFS);

	/* do not read out */
	page = FUNC16(inode->i_mapping, bidx, false);
	if (!page)
		return -ENOMEM;

	if (!FUNC7(FUNC3(inode), segno, off)) {
		err = -ENOENT;
		goto out;
	}

	if (FUNC17(inode)) {
		FUNC2(inode)->i_gc_failures[GC_FAILURE_ATOMIC]++;
		FUNC3(inode)->skipped_atomic_files[gc_type]++;
		err = -EAGAIN;
		goto out;
	}

	if (FUNC18(inode)) {
		FUNC20(inode, true);
		err = -EAGAIN;
		goto out;
	}

	FUNC34(&dn, inode, NULL, NULL, 0);
	err = FUNC14(&dn, bidx, LOOKUP_NODE);
	if (err)
		goto out;

	if (FUNC39(dn.data_blkaddr == NULL_ADDR)) {
		FUNC1(page);
		err = -ENOENT;
		goto put_out;
	}

	/*
	 * don't cache encrypted data into meta inode until previous dirty
	 * data were writebacked to avoid racing between GC and flush.
	 */
	FUNC28(page, DATA, true, true);

	FUNC27(inode, dn.data_blkaddr);

	err = FUNC15(fio.sbi, dn.nid, &ni);
	if (err)
		goto put_out;

	FUNC37(&sum, dn.nid, dn.ofs_in_node, ni.version);

	/* read page */
	fio.page = page;
	fio.new_blkaddr = fio.old_blkaddr = dn.data_blkaddr;

	if (lfs_mode)
		FUNC10(&fio.sbi->io_order_lock);

	mpage = FUNC16(FUNC4(fio.sbi),
					fio.old_blkaddr, false);
	if (!mpage)
		goto up_out;

	fio.encrypted_page = mpage;

	/* read source block in mpage */
	if (!FUNC5(mpage)) {
		err = FUNC23(&fio);
		if (err) {
			FUNC22(mpage, 1);
			goto up_out;
		}
		FUNC30(mpage);
		if (FUNC39(mpage->mapping != FUNC4(fio.sbi) ||
						!FUNC5(mpage))) {
			err = -EIO;
			FUNC22(mpage, 1);
			goto up_out;
		}
	}

	FUNC12(fio.sbi, NULL, fio.old_blkaddr, &newaddr,
					&sum, CURSEG_COLD_DATA, NULL, false);

	fio.encrypted_page = FUNC19(FUNC4(fio.sbi),
				newaddr, FGP_LOCK | FGP_CREAT, GFP_NOFS);
	if (!fio.encrypted_page) {
		err = -ENOMEM;
		FUNC22(mpage, 1);
		goto recover_block;
	}

	/* write target block */
	FUNC28(fio.encrypted_page, DATA, true, true);
	FUNC31(FUNC32(fio.encrypted_page),
				FUNC32(mpage), PAGE_SIZE);
	FUNC22(mpage, 1);
	FUNC29(FUNC4(fio.sbi),
				fio.old_blkaddr, fio.old_blkaddr);

	FUNC35(fio.encrypted_page);
	if (FUNC8(fio.encrypted_page))
		FUNC9(fio.sbi, F2FS_DIRTY_META);

	FUNC36(fio.encrypted_page);
	FUNC0(page);

	/* allocate block address */
	FUNC28(dn.node_page, NODE, true, true);

	fio.op = REQ_OP_WRITE;
	fio.op_flags = REQ_SYNC;
	fio.new_blkaddr = newaddr;
	FUNC24(&fio);
	if (fio.retry) {
		err = -EAGAIN;
		if (FUNC6(fio.encrypted_page))
			FUNC11(fio.encrypted_page);
		goto put_page_out;
	}

	FUNC26(fio.sbi, FS_GC_DATA_IO, F2FS_BLKSIZE);

	FUNC25(&dn, newaddr);
	FUNC33(inode, FI_APPEND_WRITE);
	if (page->index == 0)
		FUNC33(inode, FI_FIRST_BLOCK_WRITTEN);
put_page_out:
	FUNC22(fio.encrypted_page, 1);
recover_block:
	if (err)
		FUNC13(fio.sbi, &sum, newaddr, fio.old_blkaddr,
								true, true);
up_out:
	if (lfs_mode)
		FUNC40(&fio.sbi->io_order_lock);
put_out:
	FUNC21(&dn);
out:
	FUNC22(page, 1);
	return err;
}
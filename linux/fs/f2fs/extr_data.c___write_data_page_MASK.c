#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct writeback_control {scalar_t__ for_reclaim; } ;
struct page {int index; TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_ino; } ;
struct f2fs_sb_info {int dummy; } ;
struct f2fs_io_info {int submitted; int io_type; int /*<<< orphan*/  need_lock; int /*<<< orphan*/ * last_block; struct bio** bio; struct writeback_control* io_wbc; int /*<<< orphan*/ * encrypted_page; struct page* page; int /*<<< orphan*/  old_blkaddr; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  op; int /*<<< orphan*/  type; int /*<<< orphan*/  ino; struct f2fs_sb_info* sbi; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int pgoff_t ;
typedef  int loff_t ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;
struct TYPE_4__ {int last_disk_size; int /*<<< orphan*/  cp_task; int /*<<< orphan*/  i_sem; } ;
struct TYPE_3__ {struct inode* host; } ;

/* Variables and functions */
 int AOP_WRITEPAGE_ACTIVATE ; 
 int /*<<< orphan*/  BASE_CHECK ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  DATA ; 
 int EAGAIN ; 
 int /*<<< orphan*/  EIO ; 
 int ENOENT ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 struct f2fs_sb_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FI_HOT_DATA ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  LOCK_DONE ; 
 int /*<<< orphan*/  LOCK_REQ ; 
 int /*<<< orphan*/  LOCK_RETRY ; 
 int /*<<< orphan*/  NULL_ADDR ; 
 unsigned long long PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int FUNC11 (struct f2fs_io_info*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 scalar_t__ FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,struct bio**,struct page*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (struct inode*) ; 
 int FUNC20 (struct inode*,struct page*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 scalar_t__ FUNC22 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int /*<<< orphan*/  FUNC25 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC28 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC29 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (struct page*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (struct writeback_control*) ; 
 int /*<<< orphan*/  FUNC34 (struct page*,unsigned int,int) ; 

__attribute__((used)) static int FUNC35(struct page *page, bool *submitted,
				struct bio **bio,
				sector_t *last_block,
				struct writeback_control *wbc,
				enum iostat_type io_type)
{
	struct inode *inode = page->mapping->host;
	struct f2fs_sb_info *sbi = FUNC2(inode);
	loff_t i_size = FUNC23(inode);
	const pgoff_t end_index = ((unsigned long long) i_size)
							>> PAGE_SHIFT;
	loff_t psize = (page->index + 1) << PAGE_SHIFT;
	unsigned offset = 0;
	bool need_balance_fs = false;
	int err = 0;
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.ino = inode->i_ino,
		.type = DATA,
		.op = REQ_OP_WRITE,
		.op_flags = FUNC33(wbc),
		.old_blkaddr = NULL_ADDR,
		.page = page,
		.encrypted_page = NULL,
		.submitted = false,
		.need_lock = LOCK_RETRY,
		.io_type = io_type,
		.io_wbc = wbc,
		.bio = bio,
		.last_block = last_block,
	};

	FUNC29(page, DATA);

	/* we should bypass data pages to proceed the kworkder jobs */
	if (FUNC30(FUNC10(sbi))) {
		FUNC26(page->mapping, -EIO);
		/*
		 * don't drop any dirty dentry pages for keeping lastest
		 * directory structure.
		 */
		if (FUNC4(inode->i_mode))
			goto redirty_out;
		goto out;
	}

	if (FUNC30(FUNC25(sbi, SBI_POR_DOING)))
		goto redirty_out;

	if (page->index < end_index || FUNC19(inode))
		goto write;

	/*
	 * If the offset is out-of-range of file size,
	 * this page does not have to be written to disk.
	 */
	offset = i_size & (PAGE_SIZE - 1);
	if ((page->index >= end_index + 1) || !offset)
		goto out;

	FUNC34(page, offset, PAGE_SIZE);
write:
	if (FUNC13(inode))
		goto out;
	/* we should not write 0'th page having journal header */
	if (FUNC14(inode) && (!page->index ||
			(!wbc->for_reclaim &&
			FUNC8(sbi, BASE_CHECK))))
		goto redirty_out;

	/* Dentry blocks are controlled by checkpoint */
	if (FUNC4(inode->i_mode)) {
		fio.need_lock = LOCK_DONE;
		err = FUNC11(&fio);
		goto done;
	}

	if (!wbc->for_reclaim)
		need_balance_fs = true;
	else if (FUNC22(sbi, 0, 0))
		goto redirty_out;
	else
		FUNC28(inode, FI_HOT_DATA);

	err = -EAGAIN;
	if (FUNC12(inode)) {
		err = FUNC20(inode, page);
		if (!err)
			goto out;
	}

	if (err == -EAGAIN) {
		err = FUNC11(&fio);
		if (err == -EAGAIN) {
			fio.need_lock = LOCK_REQ;
			err = FUNC11(&fio);
		}
	}

	if (err) {
		FUNC21(inode);
	} else {
		FUNC7(&FUNC1(inode)->i_sem);
		if (FUNC1(inode)->last_disk_size < psize)
			FUNC1(inode)->last_disk_size = psize;
		FUNC32(&FUNC1(inode)->i_sem);
	}

done:
	if (err && err != -ENOENT)
		goto redirty_out;

out:
	FUNC24(inode);
	if (err) {
		FUNC0(page);
		FUNC5(page);
	}

	if (wbc->for_reclaim) {
		FUNC18(sbi, NULL, page, 0, DATA);
		FUNC6(inode, FI_HOT_DATA);
		FUNC15(inode);
		submitted = NULL;
	}

	FUNC31(page);
	if (!FUNC4(inode->i_mode) && !FUNC3(inode) &&
					!FUNC1(inode)->cp_task) {
		FUNC16(sbi, bio, page);
		FUNC9(sbi, need_balance_fs);
	}

	if (FUNC30(FUNC10(sbi))) {
		FUNC16(sbi, bio, page);
		FUNC17(sbi, DATA);
		submitted = NULL;
	}

	if (submitted)
		*submitted = fio.submitted;

	return 0;

redirty_out:
	FUNC27(wbc, page);
	/*
	 * pageout() in MM traslates EAGAIN, so calls handle_write_error()
	 * -> mapping_set_error() -> set_bit(AS_EIO, ...).
	 * file_write_and_wait_range() will see EIO error, which is critical
	 * to return value of fsync() followed by atomic_write failure to user.
	 */
	if (!err || wbc->for_reclaim)
		return AOP_WRITEPAGE_ACTIVATE;
	FUNC31(page);
	return err;
}
#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
struct f2fs_io_info {int /*<<< orphan*/  io_type; int /*<<< orphan*/  need_lock; int /*<<< orphan*/ * encrypted_page; struct page* page; int /*<<< orphan*/  old_blkaddr; int /*<<< orphan*/  op_flags; int /*<<< orphan*/  op; int /*<<< orphan*/  temp; int /*<<< orphan*/  type; int /*<<< orphan*/  ino; TYPE_1__* sbi; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_5__ {int /*<<< orphan*/ * i_gc_failures; } ;
struct TYPE_4__ {int /*<<< orphan*/ * skipped_atomic_files; } ;

/* Variables and functions */
 int BG_GC ; 
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  COLD ; 
 int /*<<< orphan*/  DATA ; 
 int EAGAIN ; 
 int ENOENT ; 
 int ENOMEM ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FG_GC ; 
 int /*<<< orphan*/  FS_GC_DATA_IO ; 
 size_t GC_FAILURE_ATOMIC ; 
 int HZ ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  LOCK_REQ ; 
 int /*<<< orphan*/  NULL_ADDR ; 
 int FUNC3 (struct page*) ; 
 int FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int /*<<< orphan*/  REQ_SYNC ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct f2fs_io_info*) ; 
 struct page* FUNC11 (struct inode*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 scalar_t__ FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 

__attribute__((used)) static int FUNC21(struct inode *inode, block_t bidx, int gc_type,
							unsigned int segno, int off)
{
	struct page *page;
	int err = 0;

	page = FUNC11(inode, bidx, true);
	if (FUNC2(page))
		return FUNC3(page);

	if (!FUNC6(FUNC1(inode), segno, off)) {
		err = -ENOENT;
		goto out;
	}

	if (FUNC12(inode)) {
		FUNC0(inode)->i_gc_failures[GC_FAILURE_ATOMIC]++;
		FUNC1(inode)->skipped_atomic_files[gc_type]++;
		err = -EAGAIN;
		goto out;
	}
	if (FUNC13(inode)) {
		if (gc_type == FG_GC)
			FUNC14(inode, true);
		err = -EAGAIN;
		goto out;
	}

	if (gc_type == BG_GC) {
		if (FUNC5(page)) {
			err = -EAGAIN;
			goto out;
		}
		FUNC20(page);
		FUNC19(page);
	} else {
		struct f2fs_io_info fio = {
			.sbi = FUNC1(inode),
			.ino = inode->i_ino,
			.type = DATA,
			.temp = COLD,
			.op = REQ_OP_WRITE,
			.op_flags = REQ_SYNC,
			.old_blkaddr = NULL_ADDR,
			.page = page,
			.encrypted_page = NULL,
			.need_lock = LOCK_REQ,
			.io_type = FS_GC_DATA_IO,
		};
		bool is_dirty = FUNC4(page);

retry:
		FUNC17(page, DATA, true, true);

		FUNC20(page);
		if (FUNC8(page)) {
			FUNC18(inode);
			FUNC16(inode);
		}

		FUNC19(page);

		err = FUNC10(&fio);
		if (err) {
			FUNC7(page);
			if (err == -ENOMEM) {
				FUNC9(BLK_RW_ASYNC, HZ/50);
				goto retry;
			}
			if (is_dirty)
				FUNC20(page);
		}
	}
out:
	FUNC15(page, 1);
	return err;
}
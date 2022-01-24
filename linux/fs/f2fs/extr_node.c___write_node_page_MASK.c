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
struct writeback_control {scalar_t__ sync_mode; scalar_t__ for_reclaim; } ;
struct page {scalar_t__ index; } ;
struct node_info {scalar_t__ blk_addr; } ;
struct f2fs_sb_info {int /*<<< orphan*/  node_write; } ;
struct f2fs_io_info {int op_flags; int submitted; int io_type; scalar_t__ old_blkaddr; int /*<<< orphan*/  new_blkaddr; struct writeback_control* io_wbc; int /*<<< orphan*/ * encrypted_page; struct page* page; int /*<<< orphan*/  op; int /*<<< orphan*/  type; int /*<<< orphan*/  ino; struct f2fs_sb_info* sbi; } ;
typedef  scalar_t__ nid_t ;
typedef  enum iostat_type { ____Placeholder_iostat_type } iostat_type ;

/* Variables and functions */
 int AOP_WRITEPAGE_ACTIVATE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  DATA_GENERIC_ENHANCE ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 struct f2fs_sb_info* FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 
 int /*<<< orphan*/  NOBARRIER ; 
 int /*<<< orphan*/  NODE ; 
 scalar_t__ NULL_ADDR ; 
 int REQ_FUA ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  SBI_POR_DOING ; 
 scalar_t__ WB_SYNC_NONE ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC8 (struct f2fs_sb_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int) ; 
 int FUNC11 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,struct f2fs_io_info*) ; 
 scalar_t__ FUNC13 (struct f2fs_sb_info*,scalar_t__,struct node_info*) ; 
 scalar_t__ FUNC14 (struct f2fs_sb_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 scalar_t__ FUNC19 (struct page*) ; 
 int /*<<< orphan*/  FUNC20 (struct page*) ; 
 int FUNC21 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct page*) ; 
 int /*<<< orphan*/  FUNC23 (struct writeback_control*,struct page*) ; 
 int /*<<< orphan*/  FUNC24 (struct f2fs_sb_info*,struct node_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 
 int /*<<< orphan*/  FUNC26 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (struct page*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC28 (int) ; 
 int /*<<< orphan*/  FUNC29 (struct page*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *) ; 
 int FUNC31 (struct writeback_control*) ; 

__attribute__((used)) static int FUNC32(struct page *page, bool atomic, bool *submitted,
				struct writeback_control *wbc, bool do_balance,
				enum iostat_type io_type, unsigned int *seq_id)
{
	struct f2fs_sb_info *sbi = FUNC2(page);
	nid_t nid;
	struct node_info ni;
	struct f2fs_io_info fio = {
		.sbi = sbi,
		.ino = FUNC18(page),
		.type = NODE,
		.op = REQ_OP_WRITE,
		.op_flags = FUNC31(wbc),
		.page = page,
		.encrypted_page = NULL,
		.submitted = false,
		.io_type = io_type,
		.io_wbc = wbc,
	};
	unsigned int seq;

	FUNC27(page, NODE);

	if (FUNC28(FUNC11(sbi)))
		goto redirty_out;

	if (FUNC28(FUNC21(sbi, SBI_POR_DOING)))
		goto redirty_out;

	if (!FUNC21(sbi, SBI_CP_DISABLED) &&
			wbc->sync_mode == WB_SYNC_NONE &&
			FUNC3(page) && FUNC19(page))
		goto redirty_out;

	/* get old block addr of this node page */
	nid = FUNC22(page);
	FUNC10(sbi, page->index != nid);

	if (FUNC13(sbi, nid, &ni))
		goto redirty_out;

	if (wbc->for_reclaim) {
		if (!FUNC7(&sbi->node_write))
			goto redirty_out;
	} else {
		FUNC6(&sbi->node_write);
	}

	/* This page is already truncated */
	if (FUNC28(ni.blk_addr == NULL_ADDR)) {
		FUNC1(page);
		FUNC5(sbi, F2FS_DIRTY_NODES);
		FUNC30(&sbi->node_write);
		FUNC29(page);
		return 0;
	}

	if (FUNC4(ni.blk_addr) &&
		!FUNC15(sbi, ni.blk_addr,
					DATA_GENERIC_ENHANCE)) {
		FUNC30(&sbi->node_write);
		goto redirty_out;
	}

	if (atomic && !FUNC26(sbi, NOBARRIER))
		fio.op_flags |= REQ_PREFLUSH | REQ_FUA;

	FUNC25(page);
	FUNC0(page);

	if (FUNC14(sbi, page)) {
		seq = FUNC8(sbi, page);
		if (seq_id)
			*seq_id = seq;
	}

	fio.old_blkaddr = ni.blk_addr;
	FUNC12(nid, &fio);
	FUNC24(sbi, &ni, fio.new_blkaddr, FUNC20(page));
	FUNC5(sbi, F2FS_DIRTY_NODES);
	FUNC30(&sbi->node_write);

	if (wbc->for_reclaim) {
		FUNC17(sbi, NULL, page, 0, NODE);
		submitted = NULL;
	}

	FUNC29(page);

	if (FUNC28(FUNC11(sbi))) {
		FUNC16(sbi, NODE);
		submitted = NULL;
	}
	if (submitted)
		*submitted = fio.submitted;

	if (do_balance)
		FUNC9(sbi, false);
	return 0;

redirty_out:
	FUNC23(wbc, page);
	return AOP_WRITEPAGE_ACTIVATE;
}
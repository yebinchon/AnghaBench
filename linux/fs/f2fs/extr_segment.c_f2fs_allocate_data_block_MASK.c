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
struct sit_info {int /*<<< orphan*/  sentry_lock; TYPE_1__* s_ops; } ;
struct page {int dummy; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {struct f2fs_bio_info** write_io; } ;
struct f2fs_io_info {int retry; int in_list; size_t type; int temp; int /*<<< orphan*/  list; } ;
struct f2fs_bio_info {int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_list; } ;
struct curseg_info {int /*<<< orphan*/  curseg_mutex; } ;
typedef  int /*<<< orphan*/  block_t ;
struct TYPE_4__ {int /*<<< orphan*/  curseg_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* allocate_segment ) (struct f2fs_sb_info*,int,int) ;} ;

/* Variables and functions */
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 scalar_t__ FUNC1 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC2 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*,struct curseg_info*) ; 
 scalar_t__ NULL_SEGNO ; 
 struct sit_info* FUNC6 (struct f2fs_sb_info*) ; 
 TYPE_2__* FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int,struct f2fs_summary*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,struct curseg_info*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct f2fs_sb_info*,struct curseg_info*) ; 
 int /*<<< orphan*/  FUNC23 (struct f2fs_sb_info*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct f2fs_sb_info*,int /*<<< orphan*/ ,int) ; 

void FUNC27(struct f2fs_sb_info *sbi, struct page *page,
		block_t old_blkaddr, block_t *new_blkaddr,
		struct f2fs_summary *sum, int type,
		struct f2fs_io_info *fio, bool add_list)
{
	struct sit_info *sit_i = FUNC6(sbi);
	struct curseg_info *curseg = FUNC0(sbi, type);

	FUNC11(&FUNC7(sbi)->curseg_lock);

	FUNC18(&curseg->curseg_mutex);
	FUNC12(&sit_i->sentry_lock);

	*new_blkaddr = FUNC5(sbi, curseg);

	FUNC14(sbi, *new_blkaddr);

	/*
	 * __add_sum_entry should be resided under the curseg_mutex
	 * because, this function updates a summary entry in the
	 * current summary block.
	 */
	FUNC8(sbi, type, sum);

	FUNC10(sbi, curseg);

	FUNC22(sbi, curseg);

	/*
	 * SIT information should be updated before segment allocation,
	 * since SSR needs latest valid block information.
	 */
	FUNC26(sbi, *new_blkaddr, 1);
	if (FUNC2(sbi, old_blkaddr) != NULL_SEGNO)
		FUNC26(sbi, old_blkaddr, -1);

	if (!FUNC9(sbi, type))
		sit_i->s_ops->allocate_segment(sbi, type, false);

	/*
	 * segment dirty status should be updated after segment allocation,
	 * so we just need to update status only one time after previous
	 * segment being closed.
	 */
	FUNC17(sbi, FUNC2(sbi, old_blkaddr));
	FUNC17(sbi, FUNC2(sbi, *new_blkaddr));

	FUNC25(&sit_i->sentry_lock);

	if (page && FUNC4(type)) {
		FUNC15(page, FUNC5(sbi, curseg));

		FUNC13(sbi, page);
	}

	if (FUNC1(sbi))
		fio->retry = false;

	if (add_list) {
		struct f2fs_bio_info *io;

		FUNC3(&fio->list);
		fio->in_list = true;
		io = sbi->write_io[fio->type] + fio->temp;
		FUNC20(&io->io_lock);
		FUNC16(&fio->list, &io->io_list);
		FUNC21(&io->io_lock);
	}

	FUNC19(&curseg->curseg_mutex);

	FUNC24(&FUNC7(sbi)->curseg_lock);
}
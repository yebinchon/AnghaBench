#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct f2fs_summary {int dummy; } ;
struct f2fs_io_info {TYPE_1__* sbi; int /*<<< orphan*/  new_blkaddr; int /*<<< orphan*/  old_blkaddr; scalar_t__ retry; int /*<<< orphan*/  page; } ;
struct TYPE_5__ {int /*<<< orphan*/  io_order_lock; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LFS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ NULL_SEGNO ; 
 int FUNC2 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct f2fs_summary*,int,struct f2fs_io_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_io_info*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_io_info*) ; 

__attribute__((used)) static void FUNC10(struct f2fs_summary *sum, struct f2fs_io_info *fio)
{
	int type = FUNC2(fio);
	bool keep_order = (FUNC7(fio->sbi, LFS) && type == CURSEG_COLD_DATA);

	if (keep_order)
		FUNC3(&fio->sbi->io_order_lock);
reallocate:
	FUNC4(fio->sbi, fio->page, fio->old_blkaddr,
			&fio->new_blkaddr, sum, type, fio, true);
	if (FUNC0(fio->sbi, fio->old_blkaddr) != NULL_SEGNO)
		FUNC6(FUNC1(fio->sbi),
					fio->old_blkaddr, fio->old_blkaddr);

	/* writeout dirty page into bdev */
	FUNC5(fio);
	if (fio->retry) {
		fio->old_blkaddr = fio->new_blkaddr;
		goto reallocate;
	}

	FUNC9(fio);

	if (keep_order)
		FUNC8(&fio->sbi->io_order_lock);
}
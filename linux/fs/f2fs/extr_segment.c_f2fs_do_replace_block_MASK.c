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
struct sit_info {int /*<<< orphan*/  sentry_lock; } ;
struct seg_entry {int type; scalar_t__ valid_blocks; } ;
struct f2fs_summary {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct curseg_info {unsigned int segno; unsigned short next_blkoff; unsigned int next_segno; int /*<<< orphan*/  curseg_mutex; } ;
typedef  scalar_t__ block_t ;
struct TYPE_2__ {int /*<<< orphan*/  curseg_lock; } ;

/* Variables and functions */
 int CURSEG_COLD_DATA ; 
 struct curseg_info* FUNC0 (struct f2fs_sb_info*,int) ; 
 int CURSEG_WARM_DATA ; 
 unsigned short FUNC1 (struct f2fs_sb_info*,scalar_t__) ; 
 unsigned int FUNC2 (struct f2fs_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct f2fs_sb_info*) ; 
 int NO_CHECK_TYPE ; 
 scalar_t__ NULL_ADDR ; 
 unsigned int NULL_SEGNO ; 
 struct sit_info* FUNC6 (struct f2fs_sb_info*) ; 
 TYPE_1__* FUNC7 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*,int,struct f2fs_summary*) ; 
 int FUNC9 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,int) ; 
 struct seg_entry* FUNC13 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct f2fs_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*,scalar_t__,int) ; 

void FUNC20(struct f2fs_sb_info *sbi, struct f2fs_summary *sum,
				block_t old_blkaddr, block_t new_blkaddr,
				bool recover_curseg, bool recover_newaddr)
{
	struct sit_info *sit_i = FUNC6(sbi);
	struct curseg_info *curseg;
	unsigned int segno, old_cursegno;
	struct seg_entry *se;
	int type;
	unsigned short old_blkoff;

	segno = FUNC2(sbi, new_blkaddr);
	se = FUNC13(sbi, segno);
	type = se->type;

	FUNC11(&FUNC7(sbi)->curseg_lock);

	if (!recover_curseg) {
		/* for recovery flow */
		if (se->valid_blocks == 0 && !FUNC3(sbi, segno)) {
			if (old_blkaddr == NULL_ADDR)
				type = CURSEG_COLD_DATA;
			else
				type = CURSEG_WARM_DATA;
		}
	} else {
		if (FUNC3(sbi, segno)) {
			/* se->type is volatile as SSR allocation */
			type = FUNC9(sbi, segno);
			FUNC12(sbi, type == NO_CHECK_TYPE);
		} else {
			type = CURSEG_WARM_DATA;
		}
	}

	FUNC12(sbi, !FUNC4(type));
	curseg = FUNC0(sbi, type);

	FUNC16(&curseg->curseg_mutex);
	FUNC11(&sit_i->sentry_lock);

	old_cursegno = curseg->segno;
	old_blkoff = curseg->next_blkoff;

	/* change the current segment */
	if (segno != curseg->segno) {
		curseg->next_segno = segno;
		FUNC10(sbi, type);
	}

	curseg->next_blkoff = FUNC1(sbi, new_blkaddr);
	FUNC8(sbi, type, sum);

	if (!recover_curseg || recover_newaddr)
		FUNC19(sbi, new_blkaddr, 1);
	if (FUNC2(sbi, old_blkaddr) != NULL_SEGNO) {
		FUNC14(FUNC5(sbi),
					old_blkaddr, old_blkaddr);
		FUNC19(sbi, old_blkaddr, -1);
	}

	FUNC15(sbi, FUNC2(sbi, old_blkaddr));
	FUNC15(sbi, FUNC2(sbi, new_blkaddr));

	FUNC15(sbi, old_cursegno);

	if (recover_curseg) {
		if (old_cursegno != curseg->segno) {
			curseg->next_segno = old_cursegno;
			FUNC10(sbi, type);
		}
		curseg->next_blkoff = old_blkoff;
	}

	FUNC18(&sit_i->sentry_lock);
	FUNC17(&curseg->curseg_mutex);
	FUNC18(&FUNC7(sbi)->curseg_lock);
}
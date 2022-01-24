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
struct gc_inode_list {int /*<<< orphan*/  iroot; int /*<<< orphan*/  ilist; } ;
struct f2fs_sb_info {unsigned long long* skipped_atomic_files; unsigned long long skipped_gc_rwsem; int segs_per_sec; int /*<<< orphan*/  gc_mutex; TYPE_1__* sb; void* cur_victim_sec; } ;
struct cp_control {int /*<<< orphan*/  reason; } ;
struct TYPE_5__ {unsigned int* last_victim; } ;
struct TYPE_4__ {int s_flags; } ;

/* Variables and functions */
 size_t ALLOC_NEXT ; 
 size_t BG_GC ; 
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENODATA ; 
 int /*<<< orphan*/  F2FS_DIRTY_DENTS ; 
 int /*<<< orphan*/  F2FS_DIRTY_IMETA ; 
 int /*<<< orphan*/  F2FS_DIRTY_NODES ; 
 size_t FG_GC ; 
 size_t FLUSH_DEVICE ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_SKIP_GC_COUNT ; 
 void* NULL_SEGNO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int SB_ACTIVE ; 
 TYPE_3__* FUNC2 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_sb_info*,unsigned int*,int) ; 
 int FUNC5 (struct f2fs_sb_info*,unsigned int,struct gc_inode_list*,int) ; 
 int FUNC6 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,int) ; 
 int FUNC8 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC11 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct f2fs_sb_info*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC16 (struct gc_inode_list*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (int) ; 

int FUNC21(struct f2fs_sb_info *sbi, bool sync,
			bool background, unsigned int segno)
{
	int gc_type = sync ? FG_GC : BG_GC;
	int sec_freed = 0, seg_freed = 0, total_freed = 0;
	int ret = 0;
	struct cp_control cpc;
	unsigned int init_segno = segno;
	struct gc_inode_list gc_list = {
		.ilist = FUNC0(gc_list.ilist),
		.iroot = FUNC1(gc_list.iroot, GFP_NOFS),
	};
	unsigned long long last_skipped = sbi->skipped_atomic_files[FG_GC];
	unsigned long long first_skipped;
	unsigned int skipped_round = 0, round = 0;

	FUNC18(sbi->sb, sync, background,
				FUNC11(sbi, F2FS_DIRTY_NODES),
				FUNC11(sbi, F2FS_DIRTY_DENTS),
				FUNC11(sbi, F2FS_DIRTY_IMETA),
				FUNC9(sbi),
				FUNC10(sbi),
				FUNC17(sbi),
				FUNC15(sbi));

	cpc.reason = FUNC3(sbi);
	sbi->skipped_gc_rwsem = 0;
	first_skipped = last_skipped;
gc_more:
	if (FUNC20(!(sbi->sb->s_flags & SB_ACTIVE))) {
		ret = -EINVAL;
		goto stop;
	}
	if (FUNC20(FUNC6(sbi))) {
		ret = -EIO;
		goto stop;
	}

	if (gc_type == BG_GC && FUNC12(sbi, 0, 0)) {
		/*
		 * For example, if there are many prefree_segments below given
		 * threshold, we can make them free by checkpoint. Then, we
		 * secure free segments which doesn't need fggc any more.
		 */
		if (FUNC15(sbi) &&
				!FUNC13(sbi, SBI_CP_DISABLED)) {
			ret = FUNC8(sbi, &cpc);
			if (ret)
				goto stop;
		}
		if (FUNC12(sbi, 0, 0))
			gc_type = FG_GC;
	}

	/* f2fs_balance_fs doesn't need to do BG_GC in critical path. */
	if (gc_type == BG_GC && !background) {
		ret = -EINVAL;
		goto stop;
	}
	if (!FUNC4(sbi, &segno, gc_type)) {
		ret = -ENODATA;
		goto stop;
	}

	seg_freed = FUNC5(sbi, segno, &gc_list, gc_type);
	if (gc_type == FG_GC && seg_freed == sbi->segs_per_sec)
		sec_freed++;
	total_freed += seg_freed;

	if (gc_type == FG_GC) {
		if (sbi->skipped_atomic_files[FG_GC] > last_skipped ||
						sbi->skipped_gc_rwsem)
			skipped_round++;
		last_skipped = sbi->skipped_atomic_files[FG_GC];
		round++;
	}

	if (gc_type == FG_GC && seg_freed)
		sbi->cur_victim_sec = NULL_SEGNO;

	if (sync)
		goto stop;

	if (FUNC12(sbi, sec_freed, 0)) {
		if (skipped_round <= MAX_SKIP_GC_COUNT ||
					skipped_round * 2 < round) {
			segno = NULL_SEGNO;
			goto gc_more;
		}

		if (first_skipped < last_skipped &&
				(last_skipped - first_skipped) >
						sbi->skipped_gc_rwsem) {
			FUNC7(sbi, true);
			segno = NULL_SEGNO;
			goto gc_more;
		}
		if (gc_type == FG_GC && !FUNC13(sbi, SBI_CP_DISABLED))
			ret = FUNC8(sbi, &cpc);
	}
stop:
	FUNC2(sbi)->last_victim[ALLOC_NEXT] = 0;
	FUNC2(sbi)->last_victim[FLUSH_DEVICE] = init_segno;

	FUNC19(sbi->sb, ret, total_freed, sec_freed,
				FUNC11(sbi, F2FS_DIRTY_NODES),
				FUNC11(sbi, F2FS_DIRTY_DENTS),
				FUNC11(sbi, F2FS_DIRTY_IMETA),
				FUNC9(sbi),
				FUNC10(sbi),
				FUNC17(sbi),
				FUNC15(sbi));

	FUNC14(&sbi->gc_mutex);

	FUNC16(&gc_list);

	if (sync && !ret)
		ret = sec_freed ? 0 : -EAGAIN;
	return ret;
}
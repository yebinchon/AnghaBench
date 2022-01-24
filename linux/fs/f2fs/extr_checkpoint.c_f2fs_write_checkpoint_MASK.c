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
struct f2fs_sb_info {int /*<<< orphan*/  cp_mutex; int /*<<< orphan*/  sb; int /*<<< orphan*/  stat_info; int /*<<< orphan*/  discard_blks; } ;
struct f2fs_checkpoint {int /*<<< orphan*/  checkpoint_ver; } ;
struct cp_control {int reason; } ;
struct TYPE_4__ {scalar_t__ dirty_nat_cnt; } ;
struct TYPE_3__ {scalar_t__ dirty_sentries; } ;

/* Variables and functions */
 int CP_DISCARD ; 
 int CP_FASTBOOT ; 
 int CP_PAUSE ; 
 int CP_RECOVERY ; 
 int CP_SYNC ; 
 int /*<<< orphan*/  CP_TIME ; 
 int EIO ; 
 int EROFS ; 
 struct f2fs_checkpoint* FUNC0 (struct f2fs_sb_info*) ; 
 TYPE_2__* FUNC1 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  SBI_CP_DISABLED ; 
 int /*<<< orphan*/  SBI_IS_DIRTY ; 
 TYPE_1__* FUNC2 (struct f2fs_sb_info*) ; 
 int FUNC3 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long long) ; 
 unsigned long long FUNC5 (struct f2fs_checkpoint*) ; 
 int FUNC6 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC7 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC8 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC10 (struct f2fs_sb_info*) ; 
 int FUNC11 (struct f2fs_sb_info*,struct cp_control*) ; 
 int /*<<< orphan*/  FUNC12 (struct f2fs_sb_info*,struct cp_control*) ; 
 scalar_t__ FUNC13 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct f2fs_sb_info*,char*,unsigned long long) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC17 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct f2fs_sb_info*,char*) ; 
 int /*<<< orphan*/  FUNC19 (struct f2fs_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (struct f2fs_sb_info*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC25 (struct f2fs_sb_info*) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ) ; 

int FUNC27(struct f2fs_sb_info *sbi, struct cp_control *cpc)
{
	struct f2fs_checkpoint *ckpt = FUNC0(sbi);
	unsigned long long ckpt_ver;
	int err = 0;

	if (FUNC15(sbi->sb) || FUNC13(sbi))
		return -EROFS;

	if (FUNC26(FUNC19(sbi, SBI_CP_DISABLED))) {
		if (cpc->reason != CP_PAUSE)
			return 0;
		FUNC18(sbi, "Start checkpoint disabled!");
	}
	FUNC20(&sbi->cp_mutex);

	if (!FUNC19(sbi, SBI_IS_DIRTY) &&
		((cpc->reason & CP_FASTBOOT) || (cpc->reason & CP_SYNC) ||
		((cpc->reason & CP_DISCARD) && !sbi->discard_blks)))
		goto out;
	if (FUNC26(FUNC8(sbi))) {
		err = -EIO;
		goto out;
	}

	FUNC24(sbi->sb, cpc->reason, "start block_ops");

	err = FUNC3(sbi);
	if (err)
		goto out;

	FUNC24(sbi->sb, cpc->reason, "finish block_ops");

	FUNC10(sbi);

	/* this is the case of multiple fstrims without any changes */
	if (cpc->reason & CP_DISCARD) {
		if (!FUNC9(sbi, cpc)) {
			FUNC25(sbi);
			goto out;
		}

		if (FUNC1(sbi)->dirty_nat_cnt == 0 &&
				FUNC2(sbi)->dirty_sentries == 0 &&
				FUNC22(sbi) == 0) {
			FUNC12(sbi, cpc);
			FUNC7(sbi, cpc);
			FUNC25(sbi);
			goto out;
		}
	}

	/*
	 * update checkpoint pack index
	 * Increase the version number so that
	 * SIT entries and seg summaries are written at correct place
	 */
	ckpt_ver = FUNC5(ckpt);
	ckpt->checkpoint_ver = FUNC4(++ckpt_ver);

	/* write cached NAT/SIT entries to NAT/SIT area */
	err = FUNC11(sbi, cpc);
	if (err)
		goto stop;

	FUNC12(sbi, cpc);

	/* unlock all the fs_lock[] in do_checkpoint() */
	err = FUNC6(sbi, cpc);
	if (err)
		FUNC16(sbi);
	else
		FUNC7(sbi, cpc);
stop:
	FUNC25(sbi);
	FUNC23(sbi->stat_info);

	if (cpc->reason & CP_RECOVERY)
		FUNC14(sbi, "checkpoint: version = %llx", ckpt_ver);

	/* do checkpoint periodically */
	FUNC17(sbi, CP_TIME);
	FUNC24(sbi->sb, cpc->reason, "finish checkpoint");
out:
	FUNC21(&sbi->cp_mutex);
	return err;
}
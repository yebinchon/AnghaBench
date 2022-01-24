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
typedef  scalar_t__ u32 ;
struct super_block {unsigned int s_id; } ;
struct mmpd_data {struct buffer_head* bh; struct super_block* sb; } ;
struct mmp_struct {int /*<<< orphan*/  mmp_bdevname; int /*<<< orphan*/  mmp_seq; int /*<<< orphan*/  mmp_check_interval; } ;
struct ext4_super_block {int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_mmp_update_interval; } ;
struct buffer_head {int /*<<< orphan*/  b_bdev; scalar_t__ b_data; } ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/ * s_mmp_tsk; struct ext4_super_block* s_es; } ;

/* Variables and functions */
 unsigned int EXT4_MMP_MIN_CHECK_INTERVAL ; 
 scalar_t__ EXT4_MMP_SEQ_CLEAN ; 
 scalar_t__ EXT4_MMP_SEQ_FSCK ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int HZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct mmp_struct*,char*) ; 
 scalar_t__ FUNC6 (struct ext4_super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct mmpd_data*) ; 
 struct mmpd_data* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kmmpd ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,struct mmpd_data*,char*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC13 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC14 () ; 
 int FUNC15 (struct super_block*,struct buffer_head**,scalar_t__) ; 
 scalar_t__ FUNC16 (unsigned int) ; 
 int FUNC17 (struct super_block*,struct buffer_head*) ; 

int FUNC18(struct super_block *sb,
				    ext4_fsblk_t mmp_block)
{
	struct ext4_super_block *es = FUNC0(sb)->s_es;
	struct buffer_head *bh = NULL;
	struct mmp_struct *mmp = NULL;
	struct mmpd_data *mmpd_data;
	u32 seq;
	unsigned int mmp_check_interval = FUNC11(es->s_mmp_update_interval);
	unsigned int wait_time = 0;
	int retval;

	if (mmp_block < FUNC12(es->s_first_data_block) ||
	    mmp_block >= FUNC6(es)) {
		FUNC7(sb, "Invalid MMP block in superblock");
		goto failed;
	}

	retval = FUNC15(sb, &bh, mmp_block);
	if (retval)
		goto failed;

	mmp = (struct mmp_struct *)(bh->b_data);

	if (mmp_check_interval < EXT4_MMP_MIN_CHECK_INTERVAL)
		mmp_check_interval = EXT4_MMP_MIN_CHECK_INTERVAL;

	/*
	 * If check_interval in MMP block is larger, use that instead of
	 * update_interval from the superblock.
	 */
	if (FUNC11(mmp->mmp_check_interval) > mmp_check_interval)
		mmp_check_interval = FUNC11(mmp->mmp_check_interval);

	seq = FUNC12(mmp->mmp_seq);
	if (seq == EXT4_MMP_SEQ_CLEAN)
		goto skip;

	if (seq == EXT4_MMP_SEQ_FSCK) {
		FUNC5(sb, mmp, "fsck is running on the filesystem");
		goto failed;
	}

	wait_time = FUNC13(mmp_check_interval * 2 + 1,
			mmp_check_interval + 60);

	/* Print MMP interval if more than 20 secs. */
	if (wait_time > EXT4_MMP_MIN_CHECK_INTERVAL * 4)
		FUNC7(sb, "MMP interval %u higher than expected, please"
			     " wait.\n", wait_time * 2);

	if (FUNC16(HZ * wait_time) != 0) {
		FUNC7(sb, "MMP startup interrupted, failing mount\n");
		goto failed;
	}

	retval = FUNC15(sb, &bh, mmp_block);
	if (retval)
		goto failed;
	mmp = (struct mmp_struct *)(bh->b_data);
	if (seq != FUNC12(mmp->mmp_seq)) {
		FUNC5(sb, mmp,
			     "Device is already active on another node.");
		goto failed;
	}

skip:
	/*
	 * write a new random sequence number.
	 */
	seq = FUNC14();
	mmp->mmp_seq = FUNC4(seq);

	retval = FUNC17(sb, bh);
	if (retval)
		goto failed;

	/*
	 * wait for MMP interval and check mmp_seq.
	 */
	if (FUNC16(HZ * wait_time) != 0) {
		FUNC7(sb, "MMP startup interrupted, failing mount");
		goto failed;
	}

	retval = FUNC15(sb, &bh, mmp_block);
	if (retval)
		goto failed;
	mmp = (struct mmp_struct *)(bh->b_data);
	if (seq != FUNC12(mmp->mmp_seq)) {
		FUNC5(sb, mmp,
			     "Device is already active on another node.");
		goto failed;
	}

	mmpd_data = FUNC9(sizeof(*mmpd_data), GFP_KERNEL);
	if (!mmpd_data) {
		FUNC7(sb, "not enough memory for mmpd_data");
		goto failed;
	}
	mmpd_data->sb = sb;
	mmpd_data->bh = bh;

	/*
	 * Start a kernel thread to update the MMP block periodically.
	 */
	FUNC0(sb)->s_mmp_tsk = FUNC10(kmmpd, mmpd_data, "kmmpd-%s",
					     FUNC2(bh->b_bdev,
						      mmp->mmp_bdevname));
	if (FUNC1(FUNC0(sb)->s_mmp_tsk)) {
		FUNC0(sb)->s_mmp_tsk = NULL;
		FUNC8(mmpd_data);
		FUNC7(sb, "Unable to create kmmpd thread for %s.",
			     sb->s_id);
		goto failed;
	}

	return 0;

failed:
	FUNC3(bh);
	return 1;
}
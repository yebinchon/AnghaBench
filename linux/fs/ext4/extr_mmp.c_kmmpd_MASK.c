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
typedef  scalar_t__ u32 ;
struct super_block {int dummy; } ;
struct mmpd_data {struct buffer_head* bh; struct super_block* sb; } ;
struct mmp_struct {scalar_t__ mmp_seq; void* mmp_time; void* mmp_check_interval; int /*<<< orphan*/  mmp_nodename; int /*<<< orphan*/  mmp_bdevname; } ;
struct ext4_super_block {int /*<<< orphan*/  s_feature_incompat; int /*<<< orphan*/  s_mmp_block; int /*<<< orphan*/  s_mmp_update_interval; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_bdev; } ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;
struct TYPE_4__ {int /*<<< orphan*/ * s_mmp_tsk; struct ext4_super_block* s_es; } ;
struct TYPE_3__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int EBUSY ; 
 int EXT4_FEATURE_INCOMPAT_MMP ; 
 int EXT4_MMP_CHECK_MULT ; 
 int /*<<< orphan*/  EXT4_MMP_MAX_CHECK_INTERVAL ; 
 int /*<<< orphan*/  EXT4_MMP_MIN_CHECK_INTERVAL ; 
 scalar_t__ EXT4_MMP_SEQ_CLEAN ; 
 scalar_t__ EXT4_MMP_SEQ_MAX ; 
 TYPE_2__* FUNC0 (struct super_block*) ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 void* FUNC3 (unsigned int) ; 
 void* FUNC4 (scalar_t__) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct mmp_struct*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,char*) ; 
 TYPE_1__* FUNC9 () ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC16 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct buffer_head*) ; 
 int FUNC21 (struct super_block*,struct buffer_head**,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC22 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC23 (int) ; 
 int FUNC24 (struct super_block*,struct buffer_head*) ; 

__attribute__((used)) static int FUNC25(void *data)
{
	struct super_block *sb = ((struct mmpd_data *) data)->sb;
	struct buffer_head *bh = ((struct mmpd_data *) data)->bh;
	struct ext4_super_block *es = FUNC0(sb)->s_es;
	struct mmp_struct *mmp;
	ext4_fsblk_t mmp_block;
	u32 seq = 0;
	unsigned long failed_writes = 0;
	int mmp_update_interval = FUNC13(es->s_mmp_update_interval);
	unsigned mmp_check_interval;
	unsigned long last_update_time;
	unsigned long diff;
	int retval;

	mmp_block = FUNC15(es->s_mmp_block);
	mmp = (struct mmp_struct *)(bh->b_data);
	mmp->mmp_time = FUNC5(FUNC12());
	/*
	 * Start with the higher mmp_check_interval and reduce it if
	 * the MMP block is being updated on time.
	 */
	mmp_check_interval = FUNC16(EXT4_MMP_CHECK_MULT * mmp_update_interval,
				 EXT4_MMP_MIN_CHECK_INTERVAL);
	mmp->mmp_check_interval = FUNC3(mmp_check_interval);
	FUNC1(bh->b_bdev, mmp->mmp_bdevname);

	FUNC18(mmp->mmp_nodename, FUNC9()->nodename,
	       sizeof(mmp->mmp_nodename));

	while (!FUNC11()) {
		if (++seq > EXT4_MMP_SEQ_MAX)
			seq = 1;

		mmp->mmp_seq = FUNC4(seq);
		mmp->mmp_time = FUNC5(FUNC12());
		last_update_time = jiffies;

		retval = FUNC24(sb, bh);
		/*
		 * Don't spew too many error messages. Print one every
		 * (s_mmp_update_interval * 60) seconds.
		 */
		if (retval) {
			if ((failed_writes % 60) == 0)
				FUNC7(sb, "Error writing to MMP block");
			failed_writes++;
		}

		if (!(FUNC14(es->s_feature_incompat) &
		    EXT4_FEATURE_INCOMPAT_MMP)) {
			FUNC8(sb, "kmmpd being stopped since MMP feature"
				     " has been disabled.");
			goto exit_thread;
		}

		if (FUNC22(sb))
			break;

		diff = jiffies - last_update_time;
		if (diff < mmp_update_interval * HZ)
			FUNC23(mmp_update_interval *
						       HZ - diff);

		/*
		 * We need to make sure that more than mmp_check_interval
		 * seconds have not passed since writing. If that has happened
		 * we need to check if the MMP block is as we left it.
		 */
		diff = jiffies - last_update_time;
		if (diff > mmp_check_interval * HZ) {
			struct buffer_head *bh_check = NULL;
			struct mmp_struct *mmp_check;

			retval = FUNC21(sb, &bh_check, mmp_block);
			if (retval) {
				FUNC7(sb, "error reading MMP data: %d",
					   retval);
				goto exit_thread;
			}

			mmp_check = (struct mmp_struct *)(bh_check->b_data);
			if (mmp->mmp_seq != mmp_check->mmp_seq ||
			    FUNC17(mmp->mmp_nodename, mmp_check->mmp_nodename,
				   sizeof(mmp->mmp_nodename))) {
				FUNC6(sb, mmp_check,
					     "Error while updating MMP info. "
					     "The filesystem seems to have been"
					     " multiply mounted.");
				FUNC7(sb, "abort");
				FUNC20(bh_check);
				retval = -EBUSY;
				goto exit_thread;
			}
			FUNC20(bh_check);
		}

		 /*
		 * Adjust the mmp_check_interval depending on how much time
		 * it took for the MMP block to be written.
		 */
		mmp_check_interval = FUNC16(FUNC19(EXT4_MMP_CHECK_MULT * diff / HZ,
					     EXT4_MMP_MAX_CHECK_INTERVAL),
					 EXT4_MMP_MIN_CHECK_INTERVAL);
		mmp->mmp_check_interval = FUNC3(mmp_check_interval);
	}

	/*
	 * Unmount seems to be clean.
	 */
	mmp->mmp_seq = FUNC4(EXT4_MMP_SEQ_CLEAN);
	mmp->mmp_time = FUNC5(FUNC12());

	retval = FUNC24(sb, bh);

exit_thread:
	FUNC0(sb)->s_mmp_tsk = NULL;
	FUNC10(data);
	FUNC2(bh);
	return retval;
}
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
struct super_block {int dummy; } ;
struct mmp_struct {int /*<<< orphan*/  mmp_magic; } ;
struct buffer_head {scalar_t__ b_data; int /*<<< orphan*/  b_end_io; } ;
typedef  int /*<<< orphan*/  ext4_fsblk_t ;

/* Variables and functions */
 int EFSBADCRC ; 
 int EFSCORRUPTED ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ EXT4_MMP_MAGIC ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  end_buffer_read_sync ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,struct mmp_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 
 struct buffer_head* FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb, struct buffer_head **bh,
			  ext4_fsblk_t mmp_block)
{
	struct mmp_struct *mmp;
	int ret;

	if (*bh)
		FUNC2(*bh);

	/* This would be sb_bread(sb, mmp_block), except we need to be sure
	 * that the MD RAID device cache has been bypassed, and that the read
	 * is not blocked in the elevator. */
	if (!*bh) {
		*bh = FUNC8(sb, mmp_block);
		if (!*bh) {
			ret = -ENOMEM;
			goto warn_exit;
		}
	}

	FUNC5(*bh);
	FUNC7(*bh);
	(*bh)->b_end_io = end_buffer_read_sync;
	FUNC9(REQ_OP_READ, REQ_META | REQ_PRIO, *bh);
	FUNC10(*bh);
	if (!FUNC1(*bh)) {
		ret = -EIO;
		goto warn_exit;
	}
	mmp = (struct mmp_struct *)((*bh)->b_data);
	if (FUNC6(mmp->mmp_magic) != EXT4_MMP_MAGIC) {
		ret = -EFSCORRUPTED;
		goto warn_exit;
	}
	if (!FUNC3(sb, mmp)) {
		ret = -EFSBADCRC;
		goto warn_exit;
	}
	return 0;
warn_exit:
	FUNC0(*bh);
	*bh = NULL;
	FUNC4(sb, "Error %d while reading MMP block %llu",
		     ret, mmp_block);
	return ret;
}
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
typedef  scalar_t__ uint ;
struct super_block {int dummy; } ;
struct jfs_superblock {int s_state; int s_logdev; int s_logserial; int s_flag; } ;
struct jfs_sb_info {int flag; scalar_t__ p_state; scalar_t__ state; TYPE_2__* log; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_4__ {scalar_t__ serial; TYPE_1__* bdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bd_dev; } ;

/* Variables and functions */
 scalar_t__ FM_CLEAN ; 
 scalar_t__ FM_DIRTY ; 
 scalar_t__ FM_MOUNT ; 
 scalar_t__ JFS_DASD_ENABLED ; 
 scalar_t__ JFS_DASD_PRIME ; 
 int JFS_NOINTEGRITY ; 
 struct jfs_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct super_block*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer_head*) ; 

int FUNC8(struct super_block *sb, uint state)
{
	struct jfs_superblock *j_sb;
	struct jfs_sb_info *sbi = FUNC0(sb);
	struct buffer_head *bh;
	int rc;

	if (sbi->flag & JFS_NOINTEGRITY) {
		if (state == FM_DIRTY) {
			sbi->p_state = state;
			return 0;
		} else if (state == FM_MOUNT) {
			sbi->p_state = sbi->state;
			state = FM_DIRTY;
		} else if (state == FM_CLEAN) {
			state = sbi->p_state;
		} else
			FUNC3("updateSuper: bad state");
	} else if (sbi->state == FM_DIRTY)
		return 0;

	if ((rc = FUNC6(sb, &bh)))
		return rc;

	j_sb = (struct jfs_superblock *)bh->b_data;

	j_sb->s_state = FUNC2(state);
	sbi->state = state;

	if (state == FM_MOUNT) {
		/* record log's dev_t and mount serial number */
		j_sb->s_logdev = FUNC2(FUNC5(sbi->log->bdev->bd_dev));
		j_sb->s_logserial = FUNC2(sbi->log->serial);
	} else if (state == FM_CLEAN) {
		/*
		 * If this volume is shared with OS/2, OS/2 will need to
		 * recalculate DASD usage, since we don't deal with it.
		 */
		if (j_sb->s_flag & FUNC2(JFS_DASD_ENABLED))
			j_sb->s_flag |= FUNC2(JFS_DASD_PRIME);
	}

	FUNC4(bh);
	FUNC7(bh);
	FUNC1(bh);

	return 0;
}
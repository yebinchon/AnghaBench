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
typedef  int /*<<< orphan*/  umode_t ;
typedef  scalar_t__ sysv_ino_t ;
struct writeback_control {int /*<<< orphan*/  sync_mode; } ;
struct sysv_sb_info {int /*<<< orphan*/  s_lock; int /*<<< orphan*/  s_sb_total_free_inodes; scalar_t__* s_sb_fic_count; } ;
struct super_block {int dummy; } ;
struct inode {scalar_t__ i_blocks; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_mtime; void* i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {scalar_t__ i_dir_start_lookup; int /*<<< orphan*/  i_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSPC ; 
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 struct sysv_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  WB_SYNC_NONE ; 
 scalar_t__ FUNC3 (struct sysv_sb_info*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct sysv_sb_info*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (struct sysv_sb_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct inode const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC15 (struct super_block*) ; 
 unsigned int FUNC16 (struct super_block*) ; 
 scalar_t__* FUNC17 (struct super_block*,unsigned int) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*,struct writeback_control*) ; 

struct inode * FUNC19(const struct inode * dir, umode_t mode)
{
	struct super_block *sb = dir->i_sb;
	struct sysv_sb_info *sbi = FUNC2(sb);
	struct inode *inode;
	sysv_ino_t ino;
	unsigned count;
	struct writeback_control wbc = {
		.sync_mode = WB_SYNC_NONE
	};

	inode = FUNC15(sb);
	if (!inode)
		return FUNC0(-ENOMEM);

	FUNC13(&sbi->s_lock);
	count = FUNC7(sbi, *sbi->s_sb_fic_count);
	if (count == 0 || (*FUNC17(sb,count-1) == 0)) {
		count = FUNC16(sb);
		if (count == 0) {
			FUNC10(inode);
			FUNC14(&sbi->s_lock);
			return FUNC0(-ENOSPC);
		}
	}
	/* Now count > 0. */
	ino = *FUNC17(sb,--count);
	*sbi->s_sb_fic_count = FUNC3(sbi, count);
	FUNC6(sbi, sbi->s_sb_total_free_inodes, -1);
	FUNC5(sb);
	FUNC8(inode, dir, mode);
	inode->i_ino = FUNC7(sbi, ino);
	inode->i_mtime = inode->i_atime = inode->i_ctime = FUNC4(inode);
	inode->i_blocks = 0;
	FUNC12(FUNC1(inode)->i_data, 0, sizeof(FUNC1(inode)->i_data));
	FUNC1(inode)->i_dir_start_lookup = 0;
	FUNC9(inode);
	FUNC11(inode);

	FUNC18(inode, &wbc);	/* ensure inode not allocated again */
	FUNC11(inode);	/* cleared by sysv_write_inode() */
	/* That's it. */
	FUNC14(&sbi->s_lock);
	return inode;
}
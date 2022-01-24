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
struct sysv_sb_info {int s_ninodes; int s_inodes_per_block_1; int /*<<< orphan*/ * s_sb_total_free_inodes; int /*<<< orphan*/  s_lock; } ;
struct sysv_inode {scalar_t__ i_mode; scalar_t__ i_nlink; } ;
struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int SYSV_ROOT_INO ; 
 struct sysv_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysv_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 
 int FUNC4 (struct sysv_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 struct sysv_inode* FUNC9 (struct super_block*,int,struct buffer_head**) ; 

unsigned long FUNC10(struct super_block * sb)
{
	struct sysv_sb_info *sbi = FUNC0(sb);
	struct buffer_head * bh;
	struct sysv_inode * raw_inode;
	int ino, count, sb_count;

	FUNC5(&sbi->s_lock);

	sb_count = FUNC4(sbi, *sbi->s_sb_total_free_inodes);

	if (0)
		goto trust_sb;

	/* this causes a lot of disk traffic ... */
	count = 0;
	ino = SYSV_ROOT_INO+1;
	raw_inode = FUNC9(sb, ino, &bh);
	if (!raw_inode)
		goto Eio;
	while (ino <= sbi->s_ninodes) {
		if (raw_inode->i_mode == 0 && raw_inode->i_nlink == 0)
			count++;
		if ((ino++ & sbi->s_inodes_per_block_1) == 0) {
			FUNC1(bh);
			raw_inode = FUNC9(sb, ino, &bh);
			if (!raw_inode)
				goto Eio;
		} else
			raw_inode++;
	}
	FUNC1(bh);
	if (count != sb_count)
		goto Einval;
out:
	FUNC6(&sbi->s_lock);
	return count;

Einval:
	FUNC7("sysv_count_free_inodes: "
		"free inode count was %d, correcting to %d\n",
		sb_count, count);
	if (!FUNC8(sb)) {
		*sbi->s_sb_total_free_inodes = FUNC2(FUNC0(sb), count);
		FUNC3(sb);
	}
	goto out;

Eio:
	FUNC7("sysv_count_free_inodes: unable to read inode table\n");
trust_sb:
	count = sb_count;
	goto out;
}
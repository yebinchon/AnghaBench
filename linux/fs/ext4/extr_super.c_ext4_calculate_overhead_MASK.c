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
struct super_block {unsigned int s_blocksize_bits; } ;
struct inode {unsigned int i_size; } ;
struct ext4_super_block {int /*<<< orphan*/  s_first_data_block; int /*<<< orphan*/  s_journal_inum; } ;
struct ext4_sb_info {int s_overhead; TYPE_1__* s_journal; int /*<<< orphan*/  journal_bdev; struct ext4_super_block* s_es; } ;
typedef  scalar_t__ ext4_group_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_2__ {unsigned int j_maxlen; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct ext4_sb_info*,unsigned int) ; 
 scalar_t__ FUNC1 (struct ext4_sb_info*,unsigned int) ; 
 struct ext4_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct super_block*,scalar_t__,char*) ; 
 scalar_t__ FUNC5 (struct super_block*) ; 
 struct inode* FUNC6 (struct super_block*,unsigned int) ; 
 scalar_t__ FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 

int FUNC15(struct super_block *sb)
{
	struct ext4_sb_info *sbi = FUNC2(sb);
	struct ext4_super_block *es = sbi->s_es;
	struct inode *j_inode;
	unsigned int j_blocks, j_inum = FUNC12(es->s_journal_inum);
	ext4_group_t i, ngroups = FUNC5(sb);
	ext4_fsblk_t overhead = 0;
	char *buf = (char *) FUNC10(GFP_NOFS);

	if (!buf)
		return -ENOMEM;

	/*
	 * Compute the overhead (FS structures).  This is constant
	 * for a given filesystem unless the number of block groups
	 * changes so we cache the previous value until it does.
	 */

	/*
	 * All of the blocks before first_data_block are overhead
	 */
	overhead = FUNC0(sbi, FUNC12(es->s_first_data_block));

	/*
	 * Add the overhead found in each block group
	 */
	for (i = 0; i < ngroups; i++) {
		int blks;

		blks = FUNC4(sb, i, buf);
		overhead += blks;
		if (blks)
			FUNC13(buf, 0, PAGE_SIZE);
		FUNC3();
	}

	/*
	 * Add the internal journal blocks whether the journal has been
	 * loaded or not
	 */
	if (sbi->s_journal && !sbi->journal_bdev)
		overhead += FUNC1(sbi, sbi->s_journal->j_maxlen);
	else if (FUNC7(sb) && !sbi->s_journal) {
		j_inode = FUNC6(sb, j_inum);
		if (j_inode) {
			j_blocks = j_inode->i_size >> sb->s_blocksize_bits;
			overhead += FUNC1(sbi, j_blocks);
			FUNC11(j_inode);
		} else {
			FUNC8(sb, KERN_ERR, "can't get journal size");
		}
	}
	sbi->s_overhead = overhead;
	FUNC14();
	FUNC9((unsigned long) buf);
	return 0;
}
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
struct super_block {int s_flags; int /*<<< orphan*/  s_blocksize; } ;
struct msdos_sb_info {int fats; int fat_length; int /*<<< orphan*/  fat_inode; } ;
struct buffer_head {int b_blocknr; int /*<<< orphan*/  b_data; } ;
typedef  int sector_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct msdos_sb_info* FUNC0 (struct super_block*) ; 
 int SB_SYNCHRONOUS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC5 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int FUNC7 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb, struct buffer_head **bhs,
			  int nr_bhs)
{
	struct msdos_sb_info *sbi = FUNC0(sb);
	struct buffer_head *c_bh;
	int err, n, copy;

	err = 0;
	for (copy = 1; copy < sbi->fats; copy++) {
		sector_t backup_fat = sbi->fat_length * copy;

		for (n = 0; n < nr_bhs; n++) {
			c_bh = FUNC5(sb, backup_fat + bhs[n]->b_blocknr);
			if (!c_bh) {
				err = -ENOMEM;
				goto error;
			}
			/* Avoid race with userspace read via bdev */
			FUNC2(c_bh);
			FUNC4(c_bh->b_data, bhs[n]->b_data, sb->s_blocksize);
			FUNC6(c_bh);
			FUNC8(c_bh);
			FUNC3(c_bh, sbi->fat_inode);
			if (sb->s_flags & SB_SYNCHRONOUS)
				err = FUNC7(c_bh);
			FUNC1(c_bh);
			if (err)
				goto error;
		}
	}
error:
	return err;
}
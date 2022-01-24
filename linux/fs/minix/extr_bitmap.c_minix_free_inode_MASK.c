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
struct super_block {int s_blocksize_bits; } ;
struct minix_sb_info {unsigned long s_ninodes; unsigned long s_imap_blocks; struct buffer_head** s_imap; } ;
struct inode {unsigned long i_ino; struct super_block* i_sb; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  bitmap_lock ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct minix_sb_info* FUNC2 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct inode * inode)
{
	struct super_block *sb = inode->i_sb;
	struct minix_sb_info *sbi = FUNC2(inode->i_sb);
	struct buffer_head *bh;
	int k = sb->s_blocksize_bits + 3;
	unsigned long ino, bit;

	ino = inode->i_ino;
	if (ino < 1 || ino > sbi->s_ninodes) {
		FUNC4("minix_free_inode: inode 0 or nonexistent inode\n");
		return;
	}
	bit = ino & ((1<<k) - 1);
	ino >>= k;
	if (ino >= sbi->s_imap_blocks) {
		FUNC4("minix_free_inode: nonexistent imap in superblock\n");
		return;
	}

	FUNC1(inode);	/* clear on-disk copy */

	bh = sbi->s_imap[ino];
	FUNC5(&bitmap_lock);
	if (!FUNC3(bit, bh->b_data))
		FUNC4("minix_free_inode: bit %lu already cleared\n", bit);
	FUNC6(&bitmap_lock);
	FUNC0(bh);
}
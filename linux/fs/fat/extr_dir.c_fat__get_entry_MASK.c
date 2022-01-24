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
struct super_block {int s_blocksize_bits; int s_blocksize; } ;
struct msdos_dir_entry {int dummy; } ;
struct inode {struct super_block* i_sb; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int sector_t ;
typedef  int loff_t ;
typedef  int /*<<< orphan*/  llu ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int FUNC1 (struct inode*,int,int*,unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC4 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, loff_t *pos,
			  struct buffer_head **bh, struct msdos_dir_entry **de)
{
	struct super_block *sb = dir->i_sb;
	sector_t phys, iblock;
	unsigned long mapped_blocks;
	int err, offset;

next:
	FUNC0(*bh);
	*bh = NULL;
	iblock = *pos >> sb->s_blocksize_bits;
	err = FUNC1(dir, iblock, &phys, &mapped_blocks, 0, false);
	if (err || !phys)
		return -1;	/* beyond EOF or error */

	FUNC2(dir, iblock, phys);

	*bh = FUNC4(sb, phys);
	if (*bh == NULL) {
		FUNC3(sb, KERN_ERR,
			"Directory bread(block %llu) failed", (llu)phys);
		/* skip this block */
		*pos = (iblock + 1) << sb->s_blocksize_bits;
		goto next;
	}

	offset = *pos & (sb->s_blocksize - 1);
	*pos += sizeof(struct msdos_dir_entry);
	*de = (struct msdos_dir_entry *)((*bh)->b_data + offset);

	return 0;
}
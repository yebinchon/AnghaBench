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
struct f2fs_super_block {int dummy; } ;
struct f2fs_sb_info {struct super_block* sb; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ F2FS_SUPER_OFFSET ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC1 (struct f2fs_sb_info*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct f2fs_super_block*) ; 
 struct f2fs_super_block* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct f2fs_super_block*,scalar_t__,int) ; 
 int FUNC5 (struct f2fs_sb_info*,struct buffer_head*) ; 
 struct buffer_head* FUNC6 (struct super_block*,int) ; 

__attribute__((used)) static int FUNC7(struct f2fs_sb_info *sbi,
			struct f2fs_super_block **raw_super,
			int *valid_super_block, int *recovery)
{
	struct super_block *sb = sbi->sb;
	int block;
	struct buffer_head *bh;
	struct f2fs_super_block *super;
	int err = 0;

	super = FUNC3(sizeof(struct f2fs_super_block), GFP_KERNEL);
	if (!super)
		return -ENOMEM;

	for (block = 0; block < 2; block++) {
		bh = FUNC6(sb, block);
		if (!bh) {
			FUNC1(sbi, "Unable to read %dth superblock",
				 block + 1);
			err = -EIO;
			continue;
		}

		/* sanity checking of raw super */
		err = FUNC5(sbi, bh);
		if (err) {
			FUNC1(sbi, "Can't find valid F2FS filesystem in %dth superblock",
				 block + 1);
			FUNC0(bh);
			continue;
		}

		if (!*raw_super) {
			FUNC4(super, bh->b_data + F2FS_SUPER_OFFSET,
							sizeof(*super));
			*valid_super_block = block;
			*raw_super = super;
		}
		FUNC0(bh);
	}

	/* Fail to read any one of the superblocks*/
	if (err < 0)
		*recovery = 1;

	/* No valid superblock */
	if (!*raw_super)
		FUNC2(super);
	else
		err = 0;

	return err;
}
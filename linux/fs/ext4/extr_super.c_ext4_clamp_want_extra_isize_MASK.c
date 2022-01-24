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
struct ext4_super_block {int /*<<< orphan*/  s_min_extra_isize; int /*<<< orphan*/  s_want_extra_isize; } ;
struct ext4_sb_info {scalar_t__ s_inode_size; scalar_t__ s_want_extra_isize; struct ext4_super_block* s_es; } ;
struct ext4_inode {int dummy; } ;

/* Variables and functions */
 scalar_t__ EXT4_GOOD_OLD_INODE_SIZE ; 
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  KERN_INFO ; 
 scalar_t__ FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct super_block *sb)
{
	struct ext4_sb_info *sbi = FUNC0(sb);
	struct ext4_super_block *es = sbi->s_es;

	/* determine the minimum size of new large inodes, if present */
	if (sbi->s_inode_size > EXT4_GOOD_OLD_INODE_SIZE &&
	    sbi->s_want_extra_isize == 0) {
		sbi->s_want_extra_isize = sizeof(struct ext4_inode) -
						     EXT4_GOOD_OLD_INODE_SIZE;
		if (FUNC1(sb)) {
			if (sbi->s_want_extra_isize <
			    FUNC3(es->s_want_extra_isize))
				sbi->s_want_extra_isize =
					FUNC3(es->s_want_extra_isize);
			if (sbi->s_want_extra_isize <
			    FUNC3(es->s_min_extra_isize))
				sbi->s_want_extra_isize =
					FUNC3(es->s_min_extra_isize);
		}
	}
	/* Check if enough inode space is available */
	if (EXT4_GOOD_OLD_INODE_SIZE + sbi->s_want_extra_isize >
							sbi->s_inode_size) {
		sbi->s_want_extra_isize = sizeof(struct ext4_inode) -
						       EXT4_GOOD_OLD_INODE_SIZE;
		FUNC2(sb, KERN_INFO,
			 "required extra inode space not available");
	}
}
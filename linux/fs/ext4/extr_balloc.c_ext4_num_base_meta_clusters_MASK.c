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
struct super_block {int dummy; } ;
struct ext4_sb_info {int s_desc_per_block; TYPE_1__* s_es; } ;
typedef  int ext4_group_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_reserved_gdt_blocks; int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 int FUNC0 (struct ext4_sb_info*,unsigned int) ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 unsigned int FUNC2 (struct super_block*,int) ; 
 scalar_t__ FUNC3 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned FUNC7(struct super_block *sb,
				     ext4_group_t block_group)
{
	struct ext4_sb_info *sbi = FUNC1(sb);
	unsigned num;

	/* Check for superblock and gdt backups in this group */
	num = FUNC2(sb, block_group);

	if (!FUNC4(sb) ||
	    block_group < FUNC6(sbi->s_es->s_first_meta_bg) *
			  sbi->s_desc_per_block) {
		if (num) {
			num += FUNC3(sb, block_group);
			num += FUNC5(sbi->s_es->s_reserved_gdt_blocks);
		}
	} else { /* For META_BG_BLOCK_GROUPS */
		num += FUNC3(sb, block_group);
	}
	return FUNC0(sbi, num);
}
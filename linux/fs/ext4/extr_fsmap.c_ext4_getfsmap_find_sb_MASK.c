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
struct list_head {int dummy; } ;
struct ext4_sb_info {TYPE_1__* s_es; } ;
typedef  unsigned long ext4_group_t ;
typedef  int ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_reserved_gdt_blocks; int /*<<< orphan*/  s_first_meta_bg; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  EXT4_FMR_OWN_FS ; 
 int /*<<< orphan*/  EXT4_FMR_OWN_GDT ; 
 int /*<<< orphan*/  EXT4_FMR_OWN_RESV_GDT ; 
 struct ext4_sb_info* FUNC1 (struct super_block*) ; 
 scalar_t__ FUNC2 (struct super_block*,unsigned long) ; 
 int FUNC3 (struct super_block*,unsigned long) ; 
 int FUNC4 (struct list_head*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC9(struct super_block *sb,
					  ext4_group_t agno,
					  struct list_head *meta_list)
{
	struct ext4_sb_info *sbi = FUNC1(sb);
	ext4_fsblk_t fsb = FUNC5(sb, agno);
	ext4_fsblk_t len;
	unsigned long first_meta_bg = FUNC8(sbi->s_es->s_first_meta_bg);
	unsigned long metagroup = agno / FUNC0(sb);
	int error;

	/* Record the superblock. */
	if (FUNC2(sb, agno)) {
		error = FUNC4(meta_list, fsb, 1, EXT4_FMR_OWN_FS);
		if (error)
			return error;
		fsb++;
	}

	/* Record the group descriptors. */
	len = FUNC3(sb, agno);
	if (!len)
		return 0;
	error = FUNC4(meta_list, fsb, len,
				   EXT4_FMR_OWN_GDT);
	if (error)
		return error;
	fsb += len;

	/* Reserved GDT blocks */
	if (!FUNC6(sb) || metagroup < first_meta_bg) {
		len = FUNC7(sbi->s_es->s_reserved_gdt_blocks);
		error = FUNC4(meta_list, fsb, len,
					   EXT4_FMR_OWN_RESV_GDT);
		if (error)
			return error;
	}

	return 0;
}
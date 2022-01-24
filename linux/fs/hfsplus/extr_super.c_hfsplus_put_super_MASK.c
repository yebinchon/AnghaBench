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
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;
struct hfsplus_vh {int /*<<< orphan*/  attributes; int /*<<< orphan*/  modify_date; } ;
struct hfsplus_sb_info {int /*<<< orphan*/  nls; int /*<<< orphan*/ * s_backup_vhdr_buf; int /*<<< orphan*/ * s_vhdr_buf; int /*<<< orphan*/  hidden_dir; int /*<<< orphan*/  alloc_file; int /*<<< orphan*/  ext_tree; int /*<<< orphan*/  cat_tree; int /*<<< orphan*/  attr_tree; struct hfsplus_vh* s_vhdr; int /*<<< orphan*/  sync_work; } ;

/* Variables and functions */
 struct hfsplus_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  HFSPLUS_VOL_INCNSTNT ; 
 int /*<<< orphan*/  HFSPLUS_VOL_UNMNT ; 
 int /*<<< orphan*/  SUPER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(struct super_block *sb)
{
	struct hfsplus_sb_info *sbi = FUNC0(sb);

	FUNC4(SUPER, "hfsplus_put_super\n");

	FUNC1(&sbi->sync_work);

	if (!FUNC9(sb) && sbi->s_vhdr) {
		struct hfsplus_vh *vhdr = sbi->s_vhdr;

		vhdr->modify_date = FUNC5();
		vhdr->attributes |= FUNC2(HFSPLUS_VOL_UNMNT);
		vhdr->attributes &= FUNC2(~HFSPLUS_VOL_INCNSTNT);

		FUNC6(sb, 1);
	}

	FUNC3(sbi->attr_tree);
	FUNC3(sbi->cat_tree);
	FUNC3(sbi->ext_tree);
	FUNC7(sbi->alloc_file);
	FUNC7(sbi->hidden_dir);
	FUNC8(sbi->s_vhdr_buf);
	FUNC8(sbi->s_backup_vhdr_buf);
	FUNC10(sbi->nls);
	FUNC8(sb->s_fs_info);
	sb->s_fs_info = NULL;
}
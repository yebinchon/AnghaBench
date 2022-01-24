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
struct udf_sb_info {int /*<<< orphan*/  s_alloc_mutex; int /*<<< orphan*/  s_lvid_bh; int /*<<< orphan*/  s_nls_map; int /*<<< orphan*/  s_vat_inode; } ;
struct super_block {int /*<<< orphan*/ * s_fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  UDF_FLAG_NLS_MAP ; 
 scalar_t__ FUNC0 (struct super_block*,int /*<<< orphan*/ ) ; 
 struct udf_sb_info* FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct super_block *sb)
{
	struct udf_sb_info *sbi;

	sbi = FUNC1(sb);

	FUNC3(sbi->s_vat_inode);
	if (FUNC0(sb, UDF_FLAG_NLS_MAP))
		FUNC9(sbi->s_nls_map);
	if (!FUNC6(sb))
		FUNC7(sb);
	FUNC2(sbi->s_lvid_bh);
	FUNC8(sb);
	FUNC5(&sbi->s_alloc_mutex);
	FUNC4(sb->s_fs_info);
	sb->s_fs_info = NULL;
}
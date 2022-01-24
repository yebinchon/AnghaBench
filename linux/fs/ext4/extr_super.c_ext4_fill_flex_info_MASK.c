#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct ext4_sb_info {int s_log_groups_per_flex; int s_groups_count; TYPE_2__* s_flex_groups; TYPE_1__* s_es; } ;
struct ext4_group_desc {int dummy; } ;
typedef  size_t ext4_group_t ;
struct TYPE_4__ {int /*<<< orphan*/  used_dirs; int /*<<< orphan*/  free_clusters; int /*<<< orphan*/  free_inodes; } ;
struct TYPE_3__ {int s_log_groups_per_flex; } ;

/* Variables and functions */
 struct ext4_sb_info* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct super_block*,int) ; 
 size_t FUNC4 (struct ext4_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC7 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext4_group_desc*) ; 

__attribute__((used)) static int FUNC9(struct super_block *sb)
{
	struct ext4_sb_info *sbi = FUNC0(sb);
	struct ext4_group_desc *gdp = NULL;
	ext4_group_t flex_group;
	int i, err;

	sbi->s_log_groups_per_flex = sbi->s_es->s_log_groups_per_flex;
	if (sbi->s_log_groups_per_flex < 1 || sbi->s_log_groups_per_flex > 31) {
		sbi->s_log_groups_per_flex = 0;
		return 1;
	}

	err = FUNC3(sb, sbi->s_groups_count);
	if (err)
		goto failed;

	for (i = 0; i < sbi->s_groups_count; i++) {
		gdp = FUNC7(sb, i, NULL);

		flex_group = FUNC4(sbi, i);
		FUNC2(FUNC6(sb, gdp),
			   &sbi->s_flex_groups[flex_group].free_inodes);
		FUNC1(FUNC5(sb, gdp),
			     &sbi->s_flex_groups[flex_group].free_clusters);
		FUNC2(FUNC8(sb, gdp),
			   &sbi->s_flex_groups[flex_group].used_dirs);
	}

	return 1;
failed:
	return 0;
}
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
struct ext4_sb_info {struct buffer_head** s_group_desc; } ;
struct ext4_new_group_data {int group; int /*<<< orphan*/  free_clusters_count; int /*<<< orphan*/  inode_table; int /*<<< orphan*/  inode_bitmap; int /*<<< orphan*/  block_bitmap; } ;
struct ext4_new_flex_group_data {int count; int /*<<< orphan*/ * bg_flags; struct ext4_new_group_data* groups; } ;
struct ext4_group_desc {int /*<<< orphan*/  bg_flags; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  int ext4_group_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int FUNC0 (struct super_block*) ; 
 int FUNC1 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*) ; 
 struct ext4_sb_info* FUNC3 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,int,struct ext4_group_desc*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 scalar_t__ FUNC10 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC11 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct super_block*,struct ext4_group_desc*,int /*<<< orphan*/ ) ; 
 int FUNC14 (struct super_block*,int,struct ext4_group_desc*) ; 
 int FUNC15 (struct super_block*,int,struct ext4_group_desc*,struct ext4_new_group_data*) ; 
 int /*<<< orphan*/  FUNC16 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct ext4_group_desc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC18 (int) ; 

__attribute__((used)) static int FUNC19(handle_t *handle, struct super_block *sb,
				struct ext4_new_flex_group_data *flex_gd)
{
	struct ext4_new_group_data	*group_data = flex_gd->groups;
	struct ext4_group_desc		*gdp;
	struct ext4_sb_info		*sbi = FUNC3(sb);
	struct buffer_head		*gdb_bh;
	ext4_group_t			group;
	__u16				*bg_flags = flex_gd->bg_flags;
	int				i, gdb_off, gdb_num, err = 0;


	for (i = 0; i < flex_gd->count; i++, group_data++, bg_flags++) {
		group = group_data->group;

		gdb_off = group % FUNC0(sb);
		gdb_num = group / FUNC0(sb);

		/*
		 * get_write_access() has been called on gdb_bh by ext4_add_new_desc().
		 */
		gdb_bh = sbi->s_group_desc[gdb_num];
		/* Update group descriptor block for new group */
		gdp = (struct ext4_group_desc *)(gdb_bh->b_data +
						 gdb_off * FUNC1(sb));

		FUNC17(gdp, 0, FUNC1(sb));
		FUNC5(sb, gdp, group_data->block_bitmap);
		FUNC11(sb, gdp, group_data->inode_bitmap);
		err = FUNC15(sb, group, gdp, group_data);
		if (err) {
			FUNC16(sb, err);
			break;
		}

		FUNC12(sb, gdp, group_data->inode_table);
		FUNC6(sb, gdp,
					     group_data->free_clusters_count);
		FUNC7(sb, gdp, FUNC2(sb));
		if (FUNC10(sb))
			FUNC13(sb, gdp,
					       FUNC2(sb));
		gdp->bg_flags = FUNC4(*bg_flags);
		FUNC8(sb, group, gdp);

		err = FUNC9(handle, NULL, gdb_bh);
		if (FUNC18(err)) {
			FUNC16(sb, err);
			break;
		}

		/*
		 * We can allocate memory for mb_alloc based on the new group
		 * descriptor
		 */
		err = FUNC14(sb, group, gdp);
		if (err)
			break;
	}
	return err;
}
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
struct ext4_sb_info {int dummy; } ;
struct ext4_new_flex_group_data {int* bg_flags; int count; TYPE_1__* groups; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int /*<<< orphan*/  handle_t ;
typedef  scalar_t__ ext4_group_t ;
typedef  scalar_t__ ext4_fsblk_t ;
struct TYPE_2__ {int /*<<< orphan*/  block_bitmap; scalar_t__ group; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer_head*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int ENOMEM ; 
 scalar_t__ FUNC2 (struct ext4_sb_info*,int /*<<< orphan*/ ) ; 
 int EXT4_BG_BLOCK_UNINIT ; 
 int /*<<< orphan*/  FUNC3 (struct ext4_sb_info*,scalar_t__) ; 
 scalar_t__ FUNC4 (struct super_block*) ; 
 struct ext4_sb_info* FUNC5 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__,...) ; 
 scalar_t__ FUNC8 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct buffer_head*) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 struct buffer_head* FUNC14 (struct super_block*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct super_block *sb, handle_t *handle,
			struct ext4_new_flex_group_data *flex_gd,
			ext4_fsblk_t first_cluster, ext4_fsblk_t last_cluster)
{
	struct ext4_sb_info *sbi = FUNC5(sb);
	ext4_group_t count = last_cluster - first_cluster + 1;
	ext4_group_t count2;

	FUNC7("mark clusters [%llu-%llu] used\n", first_cluster,
		   last_cluster);
	for (count2 = count; count > 0;
	     count -= count2, first_cluster += count2) {
		ext4_fsblk_t start;
		struct buffer_head *bh;
		ext4_group_t group;
		int err;

		group = FUNC8(sb, FUNC3(sbi, first_cluster));
		start = FUNC2(sbi, FUNC9(sb, group));
		group -= flex_gd->groups[0].group;

		count2 = FUNC4(sb) - (first_cluster - start);
		if (count2 > count)
			count2 = count;

		if (flex_gd->bg_flags[group] & EXT4_BG_BLOCK_UNINIT) {
			FUNC1(flex_gd->count > 1);
			continue;
		}

		err = FUNC13(handle, 1);
		if (err)
			return err;

		bh = FUNC14(sb, flex_gd->groups[group].block_bitmap);
		if (FUNC15(!bh))
			return -ENOMEM;

		FUNC0(bh, "get_write_access");
		err = FUNC11(handle, bh);
		if (err) {
			FUNC6(bh);
			return err;
		}
		FUNC7("mark block bitmap %#04llx (+%llu/%u)\n",
			   first_cluster, first_cluster - start, count2);
		FUNC12(bh->b_data, first_cluster - start, count2);

		err = FUNC10(handle, NULL, bh);
		FUNC6(bh);
		if (FUNC15(err))
			return err;
	}

	return 0;
}
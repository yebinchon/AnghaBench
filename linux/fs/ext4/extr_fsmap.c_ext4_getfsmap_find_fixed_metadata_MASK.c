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
struct ext4_group_desc {int dummy; } ;
typedef  scalar_t__ ext4_group_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; int s_itb_per_group; } ;

/* Variables and functions */
 int EFSCORRUPTED ; 
 int /*<<< orphan*/  EXT4_FMR_OWN_BLKBM ; 
 int /*<<< orphan*/  EXT4_FMR_OWN_INOBM ; 
 int /*<<< orphan*/  EXT4_FMR_OWN_INODES ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC3 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ext4_getfsmap_compare ; 
 int FUNC4 (struct list_head*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct super_block*,scalar_t__,struct list_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC7 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC8 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC9 (struct super_block*,struct ext4_group_desc*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct list_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct super_block *sb,
					     struct list_head *meta_list)
{
	struct ext4_group_desc *gdp;
	ext4_group_t agno;
	int error;

	FUNC1(meta_list);

	/* Collect everything. */
	for (agno = 0; agno < FUNC0(sb)->s_groups_count; agno++) {
		gdp = FUNC3(sb, agno, NULL);
		if (!gdp) {
			error = -EFSCORRUPTED;
			goto err;
		}

		/* Superblock & GDT */
		error = FUNC5(sb, agno, meta_list);
		if (error)
			goto err;

		/* Block bitmap */
		error = FUNC4(meta_list,
					   FUNC2(sb, gdp), 1,
					   EXT4_FMR_OWN_BLKBM);
		if (error)
			goto err;

		/* Inode bitmap */
		error = FUNC4(meta_list,
					   FUNC8(sb, gdp), 1,
					   EXT4_FMR_OWN_INOBM);
		if (error)
			goto err;

		/* Inodes */
		error = FUNC4(meta_list,
					   FUNC9(sb, gdp),
					   FUNC0(sb)->s_itb_per_group,
					   EXT4_FMR_OWN_INODES);
		if (error)
			goto err;
	}

	/* Sort the list */
	FUNC10(NULL, meta_list, ext4_getfsmap_compare);

	/* Merge adjacent extents */
	FUNC7(meta_list);

	return 0;
err:
	FUNC6(meta_list);
	return error;
}
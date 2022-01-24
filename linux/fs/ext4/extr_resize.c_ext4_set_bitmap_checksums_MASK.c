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
struct ext4_new_group_data {int /*<<< orphan*/  block_bitmap; int /*<<< orphan*/  inode_bitmap; } ;
struct ext4_group_desc {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef  int /*<<< orphan*/  ext4_group_t ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*,struct buffer_head*) ; 
 struct buffer_head* FUNC3 (struct super_block*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct super_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct super_block*,int /*<<< orphan*/ ,struct ext4_group_desc*,struct buffer_head*,int) ; 

__attribute__((used)) static int FUNC6(struct super_block *sb,
				     ext4_group_t group,
				     struct ext4_group_desc *gdp,
				     struct ext4_new_group_data *group_data)
{
	struct buffer_head *bh;

	if (!FUNC4(sb))
		return 0;

	bh = FUNC3(sb, group_data->inode_bitmap);
	if (!bh)
		return -EIO;
	FUNC5(sb, group, gdp, bh,
				   FUNC0(sb) / 8);
	FUNC1(bh);

	bh = FUNC3(sb, group_data->block_bitmap);
	if (!bh)
		return -EIO;
	FUNC2(sb, group, gdp, bh);
	FUNC1(bh);

	return 0;
}
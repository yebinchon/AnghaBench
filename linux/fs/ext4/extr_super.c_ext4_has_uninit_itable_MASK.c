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
struct ext4_group_desc {int bg_flags; } ;
typedef  scalar_t__ ext4_group_t ;
struct TYPE_2__ {scalar_t__ s_groups_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_BG_INODE_ZEROED ; 
 TYPE_1__* FUNC0 (struct super_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ext4_group_desc* FUNC2 (struct super_block*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct super_block*) ; 

__attribute__((used)) static ext4_group_t FUNC4(struct super_block *sb)
{
	ext4_group_t group, ngroups = FUNC0(sb)->s_groups_count;
	struct ext4_group_desc *gdp = NULL;

	if (!FUNC3(sb))
		return ngroups;

	for (group = 0; group < ngroups; group++) {
		gdp = FUNC2(sb, group, NULL);
		if (!gdp)
			continue;

		if (!(gdp->bg_flags & FUNC1(EXT4_BG_INODE_ZEROED)))
			break;
	}

	return group;
}
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
typedef  int /*<<< orphan*/  umode_t ;
struct super_block {int dummy; } ;
struct inode {int i_ino; } ;
struct ext4_group_desc {int dummy; } ;
typedef  int ext4_group_t ;
struct TYPE_2__ {int i_block_group; int i_last_alloc_group; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct super_block*,struct ext4_group_desc*) ; 
 scalar_t__ FUNC4 (struct super_block*,struct ext4_group_desc*) ; 
 struct ext4_group_desc* FUNC5 (struct super_block*,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct super_block*) ; 
 int FUNC7 (struct super_block*,struct inode*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct super_block *sb, struct inode *parent,
			    ext4_group_t *group, umode_t mode)
{
	ext4_group_t parent_group = FUNC0(parent)->i_block_group;
	ext4_group_t i, last, ngroups = FUNC6(sb);
	struct ext4_group_desc *desc;
	int flex_size = FUNC2(FUNC1(sb));

	/*
	 * Try to place the inode is the same flex group as its
	 * parent.  If we can't find space, use the Orlov algorithm to
	 * find another flex group, and store that information in the
	 * parent directory's inode information so that use that flex
	 * group for future allocations.
	 */
	if (flex_size > 1) {
		int retry = 0;

	try_again:
		parent_group &= ~(flex_size-1);
		last = parent_group + flex_size;
		if (last > ngroups)
			last = ngroups;
		for  (i = parent_group; i < last; i++) {
			desc = FUNC5(sb, i, NULL);
			if (desc && FUNC4(sb, desc)) {
				*group = i;
				return 0;
			}
		}
		if (!retry && FUNC0(parent)->i_last_alloc_group != ~0) {
			retry = 1;
			parent_group = FUNC0(parent)->i_last_alloc_group;
			goto try_again;
		}
		/*
		 * If this didn't work, use the Orlov search algorithm
		 * to find a new flex group; we pass in the mode to
		 * avoid the topdir algorithms.
		 */
		*group = parent_group + flex_size;
		if (*group > ngroups)
			*group = 0;
		return FUNC7(sb, parent, group, mode, NULL);
	}

	/*
	 * Try to place the inode in its parent directory
	 */
	*group = parent_group;
	desc = FUNC5(sb, *group, NULL);
	if (desc && FUNC4(sb, desc) &&
	    FUNC3(sb, desc))
		return 0;

	/*
	 * We're going to place this inode in a different blockgroup from its
	 * parent.  We want to cause files in a common directory to all land in
	 * the same blockgroup.  But we want files which are in a different
	 * directory which shares a blockgroup with our parent to land in a
	 * different blockgroup.
	 *
	 * So add our directory's i_ino into the starting point for the hash.
	 */
	*group = (*group + parent->i_ino) % ngroups;

	/*
	 * Use a quadratic hash to find a group with a free inode and some free
	 * blocks.
	 */
	for (i = 1; i < ngroups; i <<= 1) {
		*group += i;
		if (*group >= ngroups)
			*group -= ngroups;
		desc = FUNC5(sb, *group, NULL);
		if (desc && FUNC4(sb, desc) &&
		    FUNC3(sb, desc))
			return 0;
	}

	/*
	 * That failed: try linear search for a free inode, even if that group
	 * has no free blocks.
	 */
	*group = parent_group;
	for (i = 0; i < ngroups; i++) {
		if (++*group >= ngroups)
			*group = 0;
		desc = FUNC5(sb, *group, NULL);
		if (desc && FUNC4(sb, desc))
			return 0;
	}

	return -1;
}
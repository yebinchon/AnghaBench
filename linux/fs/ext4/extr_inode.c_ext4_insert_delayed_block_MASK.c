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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct ext4_sb_info {int s_cluster_ratio; } ;
typedef  int /*<<< orphan*/  ext4_lblk_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ext4_sb_info*,int /*<<< orphan*/ ) ; 
 struct ext4_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ext4_es_is_delonly ; 
 int /*<<< orphan*/  ext4_es_is_mapped ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, ext4_lblk_t lblk)
{
	struct ext4_sb_info *sbi = FUNC1(inode->i_sb);
	int ret;
	bool allocated = false;

	/*
	 * If the cluster containing lblk is shared with a delayed,
	 * written, or unwritten extent in a bigalloc file system, it's
	 * already been accounted for and does not need to be reserved.
	 * A pending reservation must be made for the cluster if it's
	 * shared with a written or unwritten extent and doesn't already
	 * have one.  Written and unwritten extents can be purged from the
	 * extents status tree if the system is under memory pressure, so
	 * it's necessary to examine the extent tree if a search of the
	 * extents status tree doesn't get a match.
	 */
	if (sbi->s_cluster_ratio == 1) {
		ret = FUNC3(inode);
		if (ret != 0)   /* ENOSPC */
			goto errout;
	} else {   /* bigalloc */
		if (!FUNC5(inode, &ext4_es_is_delonly, lblk)) {
			if (!FUNC5(inode,
					      &ext4_es_is_mapped, lblk)) {
				ret = FUNC2(inode,
						      FUNC0(sbi, lblk));
				if (ret < 0)
					goto errout;
				if (ret == 0) {
					ret = FUNC3(inode);
					if (ret != 0)   /* ENOSPC */
						goto errout;
				} else {
					allocated = true;
				}
			} else {
				allocated = true;
			}
		}
	}

	ret = FUNC4(inode, lblk, allocated);

errout:
	return ret;
}
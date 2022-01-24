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
typedef  int /*<<< orphan*/  u64 ;
typedef  scalar_t__ u32 ;
struct ocfs2_inode_info {int ip_flags; scalar_t__ ip_clusters; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ocfs2_inode_info* FUNC1 (struct inode*) ; 
 int OCFS2_INODE_SYSTEM_FILE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct inode*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct buffer_head*,int /*<<< orphan*/ ) ; 

int FUNC7(struct inode *inode, struct buffer_head *di_bh,
			  u64 new_i_size, u64 zero_to)
{
	int ret;
	u32 clusters_to_add;
	struct ocfs2_inode_info *oi = FUNC1(inode);

	/*
	 * Only quota files call this without a bh, and they can't be
	 * refcounted.
	 */
	FUNC0(!di_bh && FUNC5(inode));
	FUNC0(!di_bh && !(oi->ip_flags & OCFS2_INODE_SYSTEM_FILE));

	clusters_to_add = FUNC3(inode->i_sb, new_i_size);
	if (clusters_to_add < oi->ip_clusters)
		clusters_to_add = 0;
	else
		clusters_to_add -= oi->ip_clusters;

	if (clusters_to_add) {
		ret = FUNC4(inode, oi->ip_clusters,
					      clusters_to_add, 0);
		if (ret) {
			FUNC2(ret);
			goto out;
		}
	}

	/*
	 * Call this even if we don't add any clusters to the tree. We
	 * still need to zero the area between the old i_size and the
	 * new i_size.
	 */
	ret = FUNC6(inode, di_bh, zero_to);
	if (ret < 0)
		FUNC2(ret);

out:
	return ret;
}
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
struct ocfs2_inode_info {int ip_dyn_features; int /*<<< orphan*/  ip_xattr_sem; int /*<<< orphan*/  ip_alloc_sem; scalar_t__ ip_clusters; } ;
struct ocfs2_dinode {scalar_t__ i_xattr_loc; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;

/* Variables and functions */
 int OCFS2_HAS_XATTR_FL ; 
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INLINE_XATTR_FL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (struct inode*,struct ocfs2_dinode*) ; 
 int FUNC4 (struct inode*,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct inode *inode,
				   struct buffer_head *di_bh)
{
	int ret;
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_dinode *di = (struct ocfs2_dinode *)di_bh->b_data;

	FUNC1(&oi->ip_xattr_sem);
	FUNC1(&oi->ip_alloc_sem);

	if (oi->ip_clusters)
		goto out;

	if ((oi->ip_dyn_features & OCFS2_HAS_XATTR_FL) && di->i_xattr_loc)
		goto out;

	if (oi->ip_dyn_features & OCFS2_INLINE_XATTR_FL &&
	    FUNC3(inode, di))
		goto out;

	ret = FUNC4(inode, di_bh);
	if (ret)
		FUNC2(ret);
out:
	FUNC5(&oi->ip_alloc_sem);
	FUNC5(&oi->ip_xattr_sem);
	return 0;
}
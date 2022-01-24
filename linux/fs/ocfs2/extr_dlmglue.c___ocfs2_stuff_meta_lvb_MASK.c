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
struct ocfs2_meta_lvb {void* lvb_igeneration; void* lvb_idynfeatures; void* lvb_iattr; void* lvb_imtime_packed; void* lvb_ictime_packed; void* lvb_iatime_packed; void* lvb_inlink; void* lvb_imode; void* lvb_igid; void* lvb_iuid; void* lvb_iclusters; void* lvb_isize; scalar_t__ lvb_version; } ;
struct ocfs2_lock_res {int /*<<< orphan*/  l_lksb; } ;
struct ocfs2_inode_info {int ip_flags; int /*<<< orphan*/  ip_dyn_features; int /*<<< orphan*/  ip_attr; int /*<<< orphan*/  ip_clusters; struct ocfs2_lock_res ip_inode_lockres; } ;
struct inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 struct ocfs2_inode_info* FUNC0 (struct inode*) ; 
 int OCFS2_INODE_DELETED ; 
 scalar_t__ OCFS2_LVB_VERSION ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct ocfs2_lock_res*) ; 
 struct ocfs2_meta_lvb* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct inode *inode)
{
	struct ocfs2_inode_info *oi = FUNC0(inode);
	struct ocfs2_lock_res *lockres = &oi->ip_inode_lockres;
	struct ocfs2_meta_lvb *lvb;

	lvb = FUNC8(&lockres->l_lksb);

	/*
	 * Invalidate the LVB of a deleted inode - this way other
	 * nodes are forced to go to disk and discover the new inode
	 * status.
	 */
	if (oi->ip_flags & OCFS2_INODE_DELETED) {
		lvb->lvb_version = 0;
		goto out;
	}

	lvb->lvb_version   = OCFS2_LVB_VERSION;
	lvb->lvb_isize	   = FUNC3(FUNC5(inode));
	lvb->lvb_iclusters = FUNC2(oi->ip_clusters);
	lvb->lvb_iuid      = FUNC2(FUNC6(inode));
	lvb->lvb_igid      = FUNC2(FUNC4(inode));
	lvb->lvb_imode     = FUNC1(inode->i_mode);
	lvb->lvb_inlink    = FUNC1(inode->i_nlink);
	lvb->lvb_iatime_packed  =
		FUNC3(FUNC9(&inode->i_atime));
	lvb->lvb_ictime_packed =
		FUNC3(FUNC9(&inode->i_ctime));
	lvb->lvb_imtime_packed =
		FUNC3(FUNC9(&inode->i_mtime));
	lvb->lvb_iattr    = FUNC2(oi->ip_attr);
	lvb->lvb_idynfeatures = FUNC1(oi->ip_dyn_features);
	lvb->lvb_igeneration = FUNC2(inode->i_generation);

out:
	FUNC7(0, lockres);
}
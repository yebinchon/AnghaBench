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
struct ocfs2_super {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int /*<<< orphan*/ * d_fsdata; } ;
struct TYPE_2__ {int /*<<< orphan*/  ip_blkno; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 struct ocfs2_super* FUNC1 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct dentry*,struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 

void FUNC7(struct dentry *dentry, struct dentry *target,
		       struct inode *old_dir, struct inode *new_dir)
{
	int ret;
	struct ocfs2_super *osb = FUNC1(old_dir->i_sb);
	struct inode *inode = FUNC2(dentry);

	/*
	 * Move within the same directory, so the actual lock info won't
	 * change.
	 *
	 * XXX: Is there any advantage to dropping the lock here?
	 */
	if (old_dir == new_dir)
		goto out_move;

	FUNC6(osb, dentry->d_fsdata);

	dentry->d_fsdata = NULL;
	ret = FUNC5(dentry, inode, FUNC0(new_dir)->ip_blkno);
	if (ret)
		FUNC4(ret);

out_move:
	FUNC3(dentry, target);
}
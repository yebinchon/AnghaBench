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
struct ocfs2_super {int dummy; } ;
struct ocfs2_dentry_lock {int dl_count; int /*<<< orphan*/  dl_lockres; } ;
struct inode {int dummy; } ;
struct dentry {struct ocfs2_dentry_lock* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  dentry_attach_lock ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_dentry_lock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ocfs2_super *osb,
		struct dentry *dentry, struct inode *inode)
{
	struct ocfs2_dentry_lock *dl = dentry->d_fsdata;

	FUNC4(osb, &dl->dl_lockres);
	FUNC3(&dl->dl_lockres);
	FUNC0(dl->dl_count != 1);
	FUNC5(&dentry_attach_lock);
	dentry->d_fsdata = NULL;
	FUNC6(&dentry_attach_lock);
	FUNC2(dl);
	FUNC1(inode);
}
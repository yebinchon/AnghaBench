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
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_2__ {int (* link ) (struct inode*,struct inode*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct dentry*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct inode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct inode*,struct dentry*,int) ; 

int
FUNC9(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = FUNC3(old_dentry);
	int error;

	FUNC4(VFS, "NFS: link(%pd2 -> %pd2)\n",
		old_dentry, dentry);

	FUNC7(inode, dir, dentry);
	FUNC2(dentry);
	error = FUNC0(dir)->link(inode, dir, &dentry->d_name);
	if (error == 0) {
		FUNC5(inode);
		FUNC1(dentry, inode);
	}
	FUNC8(inode, dir, dentry, error);
	return error;
}
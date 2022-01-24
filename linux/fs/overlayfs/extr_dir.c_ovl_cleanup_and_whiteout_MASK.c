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
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int FUNC1 (struct dentry*) ; 
 int RENAME_EXCHANGE ; 
 scalar_t__ FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct dentry*) ; 
 int FUNC5 (struct inode*,struct dentry*,struct inode*,struct dentry*,int) ; 
 struct dentry* FUNC6 (struct dentry*) ; 

int FUNC7(struct dentry *workdir, struct inode *dir,
			     struct dentry *dentry)
{
	struct inode *wdir = workdir->d_inode;
	struct dentry *whiteout;
	int err;
	int flags = 0;

	whiteout = FUNC6(workdir);
	err = FUNC1(whiteout);
	if (FUNC0(whiteout))
		return err;

	if (FUNC2(dentry))
		flags = RENAME_EXCHANGE;

	err = FUNC5(wdir, whiteout, dir, dentry, flags);
	if (err)
		goto kill_whiteout;
	if (flags)
		FUNC4(wdir, dentry);

out:
	FUNC3(whiteout);
	return err;

kill_whiteout:
	FUNC4(wdir, whiteout);
	goto out;
}
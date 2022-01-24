#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_op; } ;
struct dentry {TYPE_2__* d_inode; } ;
struct TYPE_5__ {int /*<<< orphan*/  i_flags; } ;
struct TYPE_4__ {int (* rmdir ) (struct inode*,struct dentry*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int EPERM ; 
 int /*<<< orphan*/  S_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (struct dentry*) ; 
 int FUNC9 (struct inode*,struct dentry*,int) ; 
 int FUNC10 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int FUNC12 (struct inode*,struct dentry*) ; 

int FUNC13(struct inode *dir, struct dentry *dentry)
{
	int error = FUNC9(dir, dentry, 1);

	if (error)
		return error;

	if (!dir->i_op->rmdir)
		return -EPERM;

	FUNC2(dentry);
	FUNC6(dentry->d_inode);

	error = -EBUSY;
	if (FUNC8(dentry))
		goto out;

	error = FUNC10(dir, dentry);
	if (error)
		goto out;

	error = dir->i_op->rmdir(dir, dentry);
	if (error)
		goto out;

	FUNC11(dentry);
	dentry->d_inode->i_flags |= S_DEAD;
	FUNC3(dentry);
	FUNC1(dentry);
	FUNC5(dir, dentry);

out:
	FUNC7(dentry->d_inode);
	FUNC4(dentry);
	if (!error)
		FUNC0(dentry);
	return error;
}
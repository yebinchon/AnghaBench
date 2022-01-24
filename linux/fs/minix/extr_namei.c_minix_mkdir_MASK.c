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
typedef  int umode_t ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*,struct inode*) ; 
 struct inode* FUNC6 (struct inode*,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct inode * dir, struct dentry *dentry, umode_t mode)
{
	struct inode * inode;
	int err;

	FUNC2(dir);

	inode = FUNC6(dir, S_IFDIR | mode, &err);
	if (!inode)
		goto out_dir;

	FUNC7(inode, 0);

	FUNC2(inode);

	err = FUNC5(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC4(dentry, inode);
	if (err)
		goto out_fail;

	FUNC0(dentry, inode);
out:
	return err;

out_fail:
	FUNC1(inode);
	FUNC1(inode);
	FUNC3(inode);
out_dir:
	FUNC1(dir);
	goto out;
}
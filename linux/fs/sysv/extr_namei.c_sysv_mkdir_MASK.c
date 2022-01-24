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
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct dentry*,struct inode*) ; 
 int FUNC7 (struct inode*,struct inode*) ; 
 struct inode* FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode * dir, struct dentry *dentry, umode_t mode)
{
	struct inode * inode;
	int err;

	FUNC4(dir);

	inode = FUNC8(dir, S_IFDIR|mode);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	FUNC9(inode, 0);

	FUNC4(inode);

	err = FUNC7(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC6(dentry, inode);
	if (err)
		goto out_fail;

        FUNC2(dentry, inode);
out:
	return err;

out_fail:
	FUNC3(inode);
	FUNC3(inode);
	FUNC5(inode);
out_dir:
	FUNC3(dir);
	goto out;
}
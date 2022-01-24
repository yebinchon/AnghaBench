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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct dentry*,struct inode*) ; 
 char* FUNC6 (struct dentry*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (struct inode*,char*) ; 

__attribute__((used)) static int FUNC12(struct inode *dir, struct dentry *dentry, umode_t mode, dev_t dev)
{
	struct inode *inode;
	char *name;
	int err;

	inode = FUNC8(dir->i_sb);
	if (FUNC0(inode)) {
		err = FUNC3(inode);
		goto out;
	}

	err = -ENOMEM;
	name = FUNC6(dentry);
	if (name == NULL)
		goto out_put;

	FUNC9(inode, mode, dev);
	err = FUNC7(name, mode, FUNC1(dev), FUNC2(dev));
	if (err)
		goto out_free;

	err = FUNC11(inode, name);
	FUNC4(name);
	if (err)
		goto out_put;

	FUNC5(dentry, inode);
	return 0;

 out_free:
	FUNC4(name);
 out_put:
	FUNC10(inode);
 out:
	return err;
}
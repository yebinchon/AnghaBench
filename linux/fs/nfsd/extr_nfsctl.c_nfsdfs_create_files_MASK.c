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
struct tree_descr {int mode; int /*<<< orphan*/  ops; scalar_t__* name; } ;
struct inode {int /*<<< orphan*/  i_private; int /*<<< orphan*/  i_fop; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*,struct inode*) ; 
 struct dentry* FUNC2 (struct dentry*,scalar_t__*) ; 
 struct inode* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*) ; 

__attribute__((used)) static  int FUNC10(struct dentry *root,
					const struct tree_descr *files)
{
	struct inode *dir = FUNC3(root);
	struct inode *inode;
	struct dentry *dentry;
	int i;

	FUNC6(dir);
	for (i = 0; files->name && files->name[0]; i++, files++) {
		if (!files->name)
			continue;
		dentry = FUNC2(root, files->name);
		if (!dentry)
			goto out;
		inode = FUNC8(FUNC3(root)->i_sb,
					S_IFREG | files->mode);
		if (!inode) {
			FUNC4(dentry);
			goto out;
		}
		inode->i_fop = files->ops;
		inode->i_private = FUNC0(dir);
		FUNC1(dentry, inode);
		FUNC5(dir, dentry);
	}
	FUNC7(dir);
	return 0;
out:
	FUNC9(root);
	FUNC7(dir);
	return -ENOMEM;
}
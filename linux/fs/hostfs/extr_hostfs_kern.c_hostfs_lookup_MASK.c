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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct inode* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 
 char* FUNC4 (struct dentry*) ; 
 struct inode* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct inode*,char*) ; 

__attribute__((used)) static struct dentry *FUNC8(struct inode *ino, struct dentry *dentry,
				    unsigned int flags)
{
	struct inode *inode;
	char *name;
	int err;

	inode = FUNC5(ino->i_sb);
	if (FUNC1(inode))
		goto out;

	err = -ENOMEM;
	name = FUNC4(dentry);
	if (name) {
		err = FUNC7(inode, name);
		FUNC2(name);
	}
	if (err) {
		FUNC6(inode);
		inode = (err == -ENOENT) ? NULL : FUNC0(err);
	}
 out:
	return FUNC3(inode, dentry);
}
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
struct nfs4_exception {int interruptible; scalar_t__ retry; } ;
struct inode {int i_nlink; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  NF4REG ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct inode* FUNC2 (struct dentry*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct inode *dir, struct dentry *dentry)
{
	struct nfs4_exception exception = {
		.interruptible = true,
	};
	struct inode *inode = FUNC2(dentry);
	int err;

	if (inode) {
		if (inode->i_nlink == 1)
			FUNC5(inode);
		else
			FUNC4(inode);
	}
	do {
		err = FUNC1(dir, &dentry->d_name, NF4REG);
		FUNC6(dir, &dentry->d_name, err);
		err = FUNC3(FUNC0(dir), err,
				&exception);
	} while (exception.retry);
	return err;
}
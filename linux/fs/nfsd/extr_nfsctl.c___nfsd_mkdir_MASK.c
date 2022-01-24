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
struct nfsdfs_client {int /*<<< orphan*/  cl_ref; } ;
struct inode {struct nfsdfs_client* i_private; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, struct dentry *dentry, umode_t mode, struct nfsdfs_client *ncl)
{
	struct inode *inode;

	inode = FUNC4(dir->i_sb, mode);
	if (!inode)
		return -ENOMEM;
	if (ncl) {
		inode->i_private = ncl;
		FUNC3(&ncl->cl_ref);
	}
	FUNC0(dentry, inode);
	FUNC2(dir);
	FUNC1(dir, dentry);
	return 0;
}
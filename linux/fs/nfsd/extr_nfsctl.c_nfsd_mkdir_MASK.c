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
struct nfsdfs_client {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct dentry* FUNC0 (int) ; 
 int S_IFDIR ; 
 int FUNC1 (int /*<<< orphan*/ ,struct dentry*,int,struct nfsdfs_client*) ; 
 struct dentry* FUNC2 (struct dentry*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static struct dentry *FUNC7(struct dentry *parent, struct nfsdfs_client *ncl, char *name)
{
	struct inode *dir = parent->d_inode;
	struct dentry *dentry;
	int ret = -ENOMEM;

	FUNC5(dir);
	dentry = FUNC2(parent, name);
	if (!dentry)
		goto out_err;
	ret = FUNC1(FUNC3(parent), dentry, S_IFDIR | 0600, ncl);
	if (ret)
		goto out_err;
out:
	FUNC6(dir);
	return dentry;
out_err:
	FUNC4(dentry);
	dentry = FUNC0(ret);
	goto out;
}
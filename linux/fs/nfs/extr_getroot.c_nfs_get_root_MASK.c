#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct super_block {int dummy; } ;
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fsinfo {int /*<<< orphan*/ * fattr; } ;
struct nfs_fh {int dummy; } ;
struct inode {int d_flags; int /*<<< orphan*/  d_lock; void* d_fsdata; } ;
struct dentry {int d_flags; int /*<<< orphan*/  d_lock; void* d_fsdata; } ;
struct TYPE_4__ {TYPE_1__* rpc_ops; } ;
struct TYPE_3__ {int (* getroot ) (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;} ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int ENOMEM ; 
 struct inode* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 struct nfs_server* FUNC4 (struct super_block*) ; 
 struct inode* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 struct inode* FUNC10 (struct super_block*,struct nfs_fh*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (struct super_block*,struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 

struct dentry *FUNC17(struct super_block *sb, struct nfs_fh *mntfh,
			    const char *devname)
{
	struct nfs_server *server = FUNC4(sb);
	struct nfs_fsinfo fsinfo;
	struct dentry *ret;
	struct inode *inode;
	void *name = FUNC8(devname, GFP_KERNEL);
	int error;

	if (!name)
		return FUNC1(-ENOMEM);

	/* get the actual root for this mount */
	fsinfo.fattr = FUNC9();
	if (fsinfo.fattr == NULL) {
		FUNC7(name);
		return FUNC1(-ENOMEM);
	}

	error = server->nfs_client->rpc_ops->getroot(server, mntfh, &fsinfo);
	if (error < 0) {
		FUNC6("nfs_get_root: getattr error = %d\n", -error);
		ret = FUNC1(error);
		goto out;
	}

	inode = FUNC10(sb, mntfh, fsinfo.fattr, NULL);
	if (FUNC2(inode)) {
		FUNC6("nfs_get_root: get root inode failed\n");
		ret = FUNC0(inode);
		goto out;
	}

	error = FUNC12(sb, inode);
	if (error != 0) {
		ret = FUNC1(error);
		goto out;
	}

	/* root dentries normally start off anonymous and get spliced in later
	 * if the dentry tree reaches them; however if the dentry already
	 * exists, we'll pick it up at this point and use it as the root
	 */
	ret = FUNC5(inode);
	if (FUNC2(ret)) {
		FUNC6("nfs_get_root: get root dentry failed\n");
		goto out;
	}

	FUNC13(ret, inode);
	FUNC14(&ret->d_lock);
	if (FUNC3(ret) && !ret->d_fsdata &&
	    !(ret->d_flags & DCACHE_NFSFS_RENAMED)) {
		ret->d_fsdata = name;
		name = NULL;
	}
	FUNC15(&ret->d_lock);
out:
	FUNC7(name);
	FUNC11(fsinfo.fattr);
	return ret;
}
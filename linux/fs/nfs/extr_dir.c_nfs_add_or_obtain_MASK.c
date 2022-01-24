#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {TYPE_2__* nfs_client; } ;
struct nfs_fh {scalar_t__ size; } ;
struct nfs_fattr {int valid; } ;
struct nfs4_label {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; int /*<<< orphan*/  d_name; } ;
struct TYPE_6__ {int (* lookup ) (struct inode*,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {TYPE_1__* rpc_ops; } ;
struct TYPE_4__ {int (* getattr ) (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 struct dentry* FUNC0 (int) ; 
 int NFS_ATTR_FATTR ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 struct nfs_server* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct inode* FUNC4 (struct dentry*) ; 
 struct dentry* FUNC5 (struct inode*,struct dentry*) ; 
 struct dentry* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,struct nfs_fh*,struct nfs_fattr*,struct nfs4_label*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct inode*,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *) ; 
 int FUNC13 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct dentry *
FUNC14(struct dentry *dentry, struct nfs_fh *fhandle,
				struct nfs_fattr *fattr,
				struct nfs4_label *label)
{
	struct dentry *parent = FUNC6(dentry);
	struct inode *dir = FUNC4(parent);
	struct inode *inode;
	struct dentry *d;
	int error;

	FUNC3(dentry);

	if (fhandle->size == 0) {
		error = FUNC1(dir)->lookup(dir, &dentry->d_name, fhandle, fattr, NULL);
		if (error)
			goto out_error;
	}
	FUNC11(dentry, FUNC10(dir));
	if (!(fattr->valid & NFS_ATTR_FATTR)) {
		struct nfs_server *server = FUNC2(dentry->d_sb);
		error = server->nfs_client->rpc_ops->getattr(server, fhandle,
				fattr, NULL, NULL);
		if (error < 0)
			goto out_error;
	}
	inode = FUNC8(dentry->d_sb, fhandle, fattr, label);
	d = FUNC5(inode, dentry);
out:
	FUNC7(parent);
	return d;
out_error:
	FUNC9(dir);
	d = FUNC0(error);
	goto out;
}
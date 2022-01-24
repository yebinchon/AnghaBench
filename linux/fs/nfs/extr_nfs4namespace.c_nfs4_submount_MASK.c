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
struct vfsmount {int dummy; } ;
struct rpc_clnt {TYPE_1__* cl_auth; } ;
struct qstr {int dummy; } ;
struct nfs_server {TYPE_3__* client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int valid; } ;
struct inode {int dummy; } ;
struct dentry {struct qstr d_name; } ;
typedef  scalar_t__ rpc_authflavor_t ;
struct TYPE_6__ {TYPE_2__* cl_auth; } ;
struct TYPE_5__ {scalar_t__ au_flavor; } ;
struct TYPE_4__ {scalar_t__ au_flavor; } ;

/* Variables and functions */
 struct vfsmount* FUNC0 (struct rpc_clnt*) ; 
 scalar_t__ FUNC1 (struct rpc_clnt*) ; 
 int NFS_ATTR_FATTR_V4_REFERRAL ; 
 struct inode* FUNC2 (struct dentry*) ; 
 struct dentry* FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*) ; 
 struct rpc_clnt* FUNC5 (struct inode*,struct qstr const*,struct nfs_fh*,struct nfs_fattr*) ; 
 struct vfsmount* FUNC6 (struct rpc_clnt*,struct dentry*) ; 
 struct vfsmount* FUNC7 (struct dentry*,struct nfs_fh*,struct nfs_fattr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct rpc_clnt*) ; 

struct vfsmount *FUNC9(struct nfs_server *server, struct dentry *dentry,
			       struct nfs_fh *fh, struct nfs_fattr *fattr)
{
	rpc_authflavor_t flavor = server->client->cl_auth->au_flavor;
	struct dentry *parent = FUNC3(dentry);
	struct inode *dir = FUNC2(parent);
	const struct qstr *name = &dentry->d_name;
	struct rpc_clnt *client;
	struct vfsmount *mnt;

	/* Look it up again to get its attributes and sec flavor */
	client = FUNC5(dir, name, fh, fattr);
	FUNC4(parent);
	if (FUNC1(client))
		return FUNC0(client);

	if (fattr->valid & NFS_ATTR_FATTR_V4_REFERRAL) {
		mnt = FUNC6(client, dentry);
		goto out;
	}

	if (client->cl_auth->au_flavor != flavor)
		flavor = client->cl_auth->au_flavor;
	mnt = FUNC7(dentry, fh, fattr, flavor);
out:
	FUNC8(client);
	return mnt;
}
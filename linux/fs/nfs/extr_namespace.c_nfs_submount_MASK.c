#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct nfs_server {TYPE_2__* client; TYPE_4__* nfs_client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_name; } ;
struct TYPE_8__ {TYPE_3__* rpc_ops; } ;
struct TYPE_7__ {int (* lookup ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *) ;} ;
struct TYPE_6__ {TYPE_1__* cl_auth; } ;
struct TYPE_5__ {int /*<<< orphan*/  au_flavor; } ;

/* Variables and functions */
 struct vfsmount* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 struct dentry* FUNC2 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 struct vfsmount* FUNC4 (struct dentry*,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct nfs_fh*,struct nfs_fattr*,int /*<<< orphan*/ *) ; 

struct vfsmount *FUNC6(struct nfs_server *server, struct dentry *dentry,
			      struct nfs_fh *fh, struct nfs_fattr *fattr)
{
	int err;
	struct dentry *parent = FUNC2(dentry);

	/* Look it up again to get its attributes */
	err = server->nfs_client->rpc_ops->lookup(FUNC1(parent), &dentry->d_name, fh, fattr, NULL);
	FUNC3(parent);
	if (err != 0)
		return FUNC0(err);

	return FUNC4(dentry, fh, fattr, server->client->cl_auth->au_flavor);
}
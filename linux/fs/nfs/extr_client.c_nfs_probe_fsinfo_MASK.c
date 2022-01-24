#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nfs_server {scalar_t__ namelen; struct nfs_client* nfs_client; } ;
struct nfs_pathconf {scalar_t__ max_namelen; struct nfs_fattr* fattr; } ;
struct nfs_fsinfo {int /*<<< orphan*/  layouttype; scalar_t__ nlayouttypes; struct nfs_fattr* fattr; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct nfs_client {TYPE_1__* rpc_ops; } ;
struct TYPE_2__ {int (* set_capabilities ) (struct nfs_server*,struct nfs_fh*) ;int (* fsinfo ) (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ;scalar_t__ (* pathconf ) (struct nfs_server*,struct nfs_fh*,struct nfs_pathconf*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_server*,struct nfs_fsinfo*) ; 
 int FUNC3 (struct nfs_server*,struct nfs_fh*) ; 
 int FUNC4 (struct nfs_server*,struct nfs_fh*,struct nfs_fsinfo*) ; 
 scalar_t__ FUNC5 (struct nfs_server*,struct nfs_fh*,struct nfs_pathconf*) ; 

int FUNC6(struct nfs_server *server, struct nfs_fh *mntfh, struct nfs_fattr *fattr)
{
	struct nfs_fsinfo fsinfo;
	struct nfs_client *clp = server->nfs_client;
	int error;

	if (clp->rpc_ops->set_capabilities != NULL) {
		error = clp->rpc_ops->set_capabilities(server, mntfh);
		if (error < 0)
			return error;
	}

	fsinfo.fattr = fattr;
	fsinfo.nlayouttypes = 0;
	FUNC0(fsinfo.layouttype, 0, sizeof(fsinfo.layouttype));
	error = clp->rpc_ops->fsinfo(server, mntfh, &fsinfo);
	if (error < 0)
		return error;

	FUNC2(server, &fsinfo);

	/* Get some general file system info */
	if (server->namelen == 0) {
		struct nfs_pathconf pathinfo;

		pathinfo.fattr = fattr;
		FUNC1(fattr);

		if (clp->rpc_ops->pathconf(server, mntfh, &pathinfo) >= 0)
			server->namelen = pathinfo.max_namelen;
	}

	return 0;
}
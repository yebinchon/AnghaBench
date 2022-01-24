#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct nfs_subversion {TYPE_3__* rpc_ops; } ;
struct TYPE_10__ {scalar_t__ minor; scalar_t__ major; } ;
struct nfs_server {scalar_t__ namelen; int /*<<< orphan*/  mount_time; TYPE_5__ fsid; int /*<<< orphan*/  caps; TYPE_2__* nfs_client; int /*<<< orphan*/  cred; } ;
struct nfs_mount_info {int /*<<< orphan*/  mntfh; TYPE_4__* parsed; } ;
struct nfs_fattr {int valid; int /*<<< orphan*/  fsid; } ;
struct TYPE_9__ {int flags; } ;
struct TYPE_8__ {int (* getattr ) (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {TYPE_1__* rpc_ops; } ;
struct TYPE_6__ {int version; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs_server* FUNC0 (int) ; 
 scalar_t__ NFS2_MAXNAMLEN ; 
 scalar_t__ NFS3_MAXNAMLEN ; 
 int NFS_ATTR_FATTR ; 
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 int NFS_MOUNT_NORDIRPLUS ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 
 struct nfs_fattr* FUNC5 () ; 
 struct nfs_server* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_server*) ; 
 int FUNC9 (struct nfs_server*,TYPE_4__*,struct nfs_subversion*) ; 
 int FUNC10 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC11 (struct nfs_server*) ; 
 int FUNC12 (struct nfs_server*,int /*<<< orphan*/ ,struct nfs_fattr*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct nfs_server *FUNC13(struct nfs_mount_info *mount_info,
				     struct nfs_subversion *nfs_mod)
{
	struct nfs_server *server;
	struct nfs_fattr *fattr;
	int error;

	server = FUNC6();
	if (!server)
		return FUNC0(-ENOMEM);

	server->cred = FUNC3(FUNC1());

	error = -ENOMEM;
	fattr = FUNC5();
	if (fattr == NULL)
		goto error;

	/* Get a client representation */
	error = FUNC9(server, mount_info->parsed, nfs_mod);
	if (error < 0)
		goto error;

	/* Probe the root fh to retrieve its FSID */
	error = FUNC10(server, mount_info->mntfh, fattr);
	if (error < 0)
		goto error;
	if (server->nfs_client->rpc_ops->version == 3) {
		if (server->namelen == 0 || server->namelen > NFS3_MAXNAMLEN)
			server->namelen = NFS3_MAXNAMLEN;
		if (!(mount_info->parsed->flags & NFS_MOUNT_NORDIRPLUS))
			server->caps |= NFS_CAP_READDIRPLUS;
	} else {
		if (server->namelen == 0 || server->namelen > NFS2_MAXNAMLEN)
			server->namelen = NFS2_MAXNAMLEN;
	}

	if (!(fattr->valid & NFS_ATTR_FATTR)) {
		error = nfs_mod->rpc_ops->getattr(server, mount_info->mntfh,
				fattr, NULL, NULL);
		if (error < 0) {
			FUNC2("nfs_create_server: getattr error = %d\n", -error);
			goto error;
		}
	}
	FUNC4(&server->fsid, &fattr->fsid, sizeof(server->fsid));

	FUNC2("Server FSID: %llx:%llx\n",
		(unsigned long long) server->fsid.major,
		(unsigned long long) server->fsid.minor);

	FUNC11(server);
	server->mount_time = jiffies;
	FUNC7(fattr);
	return server;

error:
	FUNC7(fattr);
	FUNC8(server);
	return FUNC0(error);
}
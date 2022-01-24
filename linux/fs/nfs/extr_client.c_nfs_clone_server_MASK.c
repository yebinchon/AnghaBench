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
struct nfs_server {scalar_t__ namelen; int /*<<< orphan*/  mount_time; TYPE_2__* client; int /*<<< orphan*/  fsid; TYPE_1__* nfs_client; int /*<<< orphan*/  destroy; int /*<<< orphan*/  cred; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int /*<<< orphan*/  fsid; } ;
typedef  int /*<<< orphan*/  rpc_authflavor_t ;
struct TYPE_4__ {int /*<<< orphan*/  cl_timeout; } ;
struct TYPE_3__ {int /*<<< orphan*/  cl_count; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfs_server* FUNC0 (int) ; 
 scalar_t__ NFS4_MAXNAMLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct nfs_fattr* FUNC2 () ; 
 struct nfs_server* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_server*) ; 
 int FUNC6 (struct nfs_server*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct nfs_server*,struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_server*) ; 
 int FUNC10 (struct nfs_server*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

struct nfs_server *FUNC12(struct nfs_server *source,
				    struct nfs_fh *fh,
				    struct nfs_fattr *fattr,
				    rpc_authflavor_t flavor)
{
	struct nfs_server *server;
	struct nfs_fattr *fattr_fsinfo;
	int error;

	server = FUNC3();
	if (!server)
		return FUNC0(-ENOMEM);

	server->cred = FUNC1(source->cred);

	error = -ENOMEM;
	fattr_fsinfo = FUNC2();
	if (fattr_fsinfo == NULL)
		goto out_free_server;

	/* Copy data from the source */
	server->nfs_client = source->nfs_client;
	server->destroy = source->destroy;
	FUNC11(&server->nfs_client->cl_count);
	FUNC8(server, source);

	server->fsid = fattr->fsid;

	error = FUNC6(server,
			source->client->cl_timeout,
			flavor);
	if (error < 0)
		goto out_free_server;

	/* probe the filesystem info for this server filesystem */
	error = FUNC7(server, fh, fattr_fsinfo);
	if (error < 0)
		goto out_free_server;

	if (server->namelen == 0 || server->namelen > NFS4_MAXNAMLEN)
		server->namelen = NFS4_MAXNAMLEN;

	error = FUNC10(server);
	if (error < 0)
		goto out_free_server;

	FUNC9(server);
	server->mount_time = jiffies;

	FUNC4(fattr_fsinfo);
	return server;

out_free_server:
	FUNC4(fattr_fsinfo);
	FUNC5(server);
	return FUNC0(error);
}
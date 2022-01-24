#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ minor; scalar_t__ major; } ;
struct nfs_server {int flags; scalar_t__ namelen; int /*<<< orphan*/  destroy; int /*<<< orphan*/  mount_time; TYPE_4__ fsid; int /*<<< orphan*/  caps; TYPE_3__* client; TYPE_5__* nfs_client; } ;
struct nfs_fh {int dummy; } ;
struct nfs_fattr {int dummy; } ;
struct TYPE_11__ {TYPE_1__* cl_mvops; } ;
struct TYPE_9__ {TYPE_2__* cl_auth; } ;
struct TYPE_8__ {scalar_t__ au_flavor; } ;
struct TYPE_7__ {int /*<<< orphan*/  init_caps; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROTONOSUPPORT ; 
 scalar_t__ NFS4_MAXNAMLEN ; 
 int /*<<< orphan*/  NFS_CAP_READDIRPLUS ; 
 int /*<<< orphan*/  NFS_CAP_UIDGID_NOMAP ; 
 int NFS_MOUNT_NORDIRPLUS ; 
 scalar_t__ RPC_AUTH_UNIX ; 
 int /*<<< orphan*/  FUNC0 (char*,unsigned long long,unsigned long long) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  nfs4_destroy_server ; 
 scalar_t__ nfs4_disable_idmapping ; 
 int FUNC2 (struct nfs_server*,struct nfs_fh*,int) ; 
 int FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_server*) ; 
 struct nfs_fattr* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_fh*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct nfs_fattr*) ; 
 int FUNC8 (struct nfs_server*,struct nfs_fh*,struct nfs_fattr*) ; 
 int /*<<< orphan*/  FUNC9 (struct nfs_server*) ; 

__attribute__((used)) static int FUNC10(struct nfs_server *server,
		struct nfs_fh *mntfh, bool auth_probe)
{
	struct nfs_fattr *fattr;
	int error;

	/* data servers support only a subset of NFSv4.1 */
	if (FUNC1(server->nfs_client))
		return -EPROTONOSUPPORT;

	fattr = FUNC5();
	if (fattr == NULL)
		return -ENOMEM;

	/* We must ensure the session is initialised first */
	error = FUNC3(server->nfs_client);
	if (error < 0)
		goto out;

	/* Set the basic capabilities */
	server->caps |= server->nfs_client->cl_mvops->init_caps;
	if (server->flags & NFS_MOUNT_NORDIRPLUS)
			server->caps &= ~NFS_CAP_READDIRPLUS;
	/*
	 * Don't use NFS uid/gid mapping if we're using AUTH_SYS or lower
	 * authentication.
	 */
	if (nfs4_disable_idmapping &&
			server->client->cl_auth->au_flavor == RPC_AUTH_UNIX)
		server->caps |= NFS_CAP_UIDGID_NOMAP;


	/* Probe the root fh to retrieve its FSID and filehandle */
	error = FUNC2(server, mntfh, auth_probe);
	if (error < 0)
		goto out;

	FUNC0("Server FSID: %llx:%llx\n",
			(unsigned long long) server->fsid.major,
			(unsigned long long) server->fsid.minor);
	FUNC6(mntfh, "Pseudo-fs root FH");

	error = FUNC8(server, mntfh, fattr);
	if (error < 0)
		goto out;

	FUNC4(server);

	if (server->namelen == 0 || server->namelen > NFS4_MAXNAMLEN)
		server->namelen = NFS4_MAXNAMLEN;

	FUNC9(server);
	server->mount_time = jiffies;
	server->destroy = nfs4_destroy_server;
out:
	FUNC7(fattr);
	return error;
}
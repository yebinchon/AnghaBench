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
typedef  int u32 ;
struct rpc_message {struct cred const* rpc_cred; struct nfs4_fs_locations_res* rpc_resp; struct nfs4_fs_locations_arg* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct page {int dummy; } ;
struct nfs_server {TYPE_1__* nfs_client; struct rpc_clnt* client; } ;
struct nfs4_fs_locations_res {int migration; int renew; int /*<<< orphan*/  seq_res; struct nfs4_fs_locations* fs_locations; } ;
struct nfs4_fs_locations_arg {int* bitmask; int migration; int renew; int /*<<< orphan*/  seq_args; struct page* page; int /*<<< orphan*/  fh; int /*<<< orphan*/  clientid; } ;
struct nfs4_fs_locations {scalar_t__ nlocations; struct nfs_server* server; int /*<<< orphan*/  fattr; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cl_clientid; } ;

/* Variables and functions */
 int FATTR4_WORD0_FSID ; 
 int FATTR4_WORD0_FS_LOCATIONS ; 
 size_t NFSPROC4_CLNT_FS_LOCATIONS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 unsigned long jiffies ; 
 int FUNC2 (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nfs_server*,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct inode *inode,
				     struct nfs4_fs_locations *locations,
				     struct page *page, const struct cred *cred)
{
	struct nfs_server *server = FUNC1(inode);
	struct rpc_clnt *clnt = server->client;
	u32 bitmask[2] = {
		[0] = FATTR4_WORD0_FSID | FATTR4_WORD0_FS_LOCATIONS,
	};
	struct nfs4_fs_locations_arg args = {
		.clientid	= server->nfs_client->cl_clientid,
		.fh		= FUNC0(inode),
		.page		= page,
		.bitmask	= bitmask,
		.migration	= 1,		/* skip LOOKUP */
		.renew		= 1,		/* append RENEW */
	};
	struct nfs4_fs_locations_res res = {
		.fs_locations	= locations,
		.migration	= 1,
		.renew		= 1,
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs4_procedures[NFSPROC4_CLNT_FS_LOCATIONS],
		.rpc_argp	= &args,
		.rpc_resp	= &res,
		.rpc_cred	= cred,
	};
	unsigned long now = jiffies;
	int status;

	FUNC4(&locations->fattr);
	locations->server = server;
	locations->nlocations = 0;

	FUNC3(&args.seq_args, &res.seq_res, 0, 1);
	status = FUNC2(clnt, server, &msg,
					&args.seq_args, &res.seq_res);
	if (status)
		return status;

	FUNC5(server, now);
	return 0;
}
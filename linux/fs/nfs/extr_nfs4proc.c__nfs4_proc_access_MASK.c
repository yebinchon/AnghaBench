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
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs4_accessres* rpc_resp; struct nfs4_accessargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  client; int /*<<< orphan*/  cache_consistency_bitmask; } ;
struct nfs_access_entry {int /*<<< orphan*/  cred; int /*<<< orphan*/  mask; } ;
struct nfs4_accessres {int /*<<< orphan*/ * fattr; int /*<<< orphan*/  access; int /*<<< orphan*/  seq_res; struct nfs_server* server; } ;
struct nfs4_accessargs {int /*<<< orphan*/  seq_args; int /*<<< orphan*/  bitmask; int /*<<< orphan*/  access; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FMODE_READ ; 
 size_t NFSPROC4_CLNT_ACCESS ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC4 (struct nfs_access_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct nfs_access_entry *entry)
{
	struct nfs_server *server = FUNC1(inode);
	struct nfs4_accessargs args = {
		.fh = FUNC0(inode),
		.access = entry->mask,
	};
	struct nfs4_accessres res = {
		.server = server,
	};
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_ACCESS],
		.rpc_argp = &args,
		.rpc_resp = &res,
		.rpc_cred = entry->cred,
	};
	int status = 0;

	if (!FUNC3(inode, FMODE_READ)) {
		res.fattr = FUNC5();
		if (res.fattr == NULL)
			return -ENOMEM;
		args.bitmask = server->cache_consistency_bitmask;
	}
	status = FUNC2(server->client, server, &msg, &args.seq_args, &res.seq_res, 0);
	if (!status) {
		FUNC4(entry, res.access);
		if (res.fattr)
			FUNC7(inode, res.fattr);
	}
	FUNC6(res.fattr);
	return status;
}
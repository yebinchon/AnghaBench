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
struct rpc_message {struct cred const* rpc_cred; struct nfs4_fsid_present_res* rpc_resp; struct nfs4_fsid_present_arg* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct rpc_clnt {int dummy; } ;
struct nfs_server {struct rpc_clnt* client; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_clientid; } ;
struct nfs4_fsid_present_res {int renew; int /*<<< orphan*/ * fh; int /*<<< orphan*/  seq_res; } ;
struct nfs4_fsid_present_arg {int renew; int /*<<< orphan*/  seq_args; int /*<<< orphan*/  clientid; int /*<<< orphan*/  fh; } ;
struct inode {int dummy; } ;
struct cred {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t NFSPROC4_CLNT_FSID_PRESENT ; 
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs_client*,unsigned long) ; 
 unsigned long jiffies ; 
 int FUNC3 (struct rpc_clnt*,struct nfs_server*,struct rpc_message*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, const struct cred *cred)
{
	struct nfs_server *server = FUNC1(inode);
	struct nfs_client *clp = FUNC1(inode)->nfs_client;
	struct rpc_clnt *clnt = server->client;
	struct nfs4_fsid_present_arg args = {
		.fh		= FUNC0(inode),
		.clientid	= clp->cl_clientid,
		.renew		= 1,		/* append RENEW */
	};
	struct nfs4_fsid_present_res res = {
		.renew		= 1,
	};
	struct rpc_message msg = {
		.rpc_proc	= &nfs4_procedures[NFSPROC4_CLNT_FSID_PRESENT],
		.rpc_argp	= &args,
		.rpc_resp	= &res,
		.rpc_cred	= cred,
	};
	unsigned long now = jiffies;
	int status;

	res.fh = FUNC5();
	if (res.fh == NULL)
		return -ENOMEM;

	FUNC4(&args.seq_args, &res.seq_res, 0, 1);
	status = FUNC3(clnt, server, &msg,
						&args.seq_args, &res.seq_res);
	FUNC6(res.fh);
	if (status)
		return status;

	FUNC2(clp, now);
	return 0;
}
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
struct rpc_message {int /*<<< orphan*/ * rpc_proc; struct mountres* rpc_resp; int /*<<< orphan*/  rpc_argp; } ;
struct rpc_create_args {char* servername; scalar_t__ version; int /*<<< orphan*/  flags; int /*<<< orphan*/  cred; int /*<<< orphan*/  authflavor; int /*<<< orphan*/ * program; int /*<<< orphan*/  addrsize; int /*<<< orphan*/  address; int /*<<< orphan*/  protocol; int /*<<< orphan*/  net; } ;
struct rpc_clnt {int /*<<< orphan*/ * cl_procinfo; } ;
struct nfs_mount_request {int* auth_flav_len; char* hostname; scalar_t__ version; int /*<<< orphan*/ * auth_flavs; scalar_t__ noresvport; int /*<<< orphan*/  dirpath; int /*<<< orphan*/  salen; int /*<<< orphan*/  sap; int /*<<< orphan*/  protocol; int /*<<< orphan*/  net; int /*<<< orphan*/  fh; } ;
struct mountres {int* auth_count; int errno; int /*<<< orphan*/ * auth_flavors; int /*<<< orphan*/  fh; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct rpc_clnt*) ; 
 scalar_t__ MNTPATHLEN ; 
 size_t MOUNTPROC3_MNT ; 
 size_t MOUNTPROC_MNT ; 
 scalar_t__ NFS_MNT3_VERSION ; 
 int FUNC1 (struct rpc_clnt*) ; 
 int /*<<< orphan*/  RPC_AUTH_NULL ; 
 int /*<<< orphan*/  RPC_AUTH_UNIX ; 
 int /*<<< orphan*/  RPC_CLNT_CREATE_NONPRIVPORT ; 
 int RPC_TASK_SOFT ; 
 int RPC_TASK_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  mnt_program ; 
 int FUNC4 (struct rpc_clnt*,struct rpc_message*,int) ; 
 struct rpc_clnt* FUNC5 (struct rpc_create_args*) ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_clnt*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct nfs_mount_request *info)
{
	struct mountres	result = {
		.fh		= info->fh,
		.auth_count	= info->auth_flav_len,
		.auth_flavors	= info->auth_flavs,
	};
	struct rpc_message msg	= {
		.rpc_argp	= info->dirpath,
		.rpc_resp	= &result,
	};
	struct rpc_create_args args = {
		.net		= info->net,
		.protocol	= info->protocol,
		.address	= info->sap,
		.addrsize	= info->salen,
		.servername	= info->hostname,
		.program	= &mnt_program,
		.version	= info->version,
		.authflavor	= RPC_AUTH_UNIX,
		.cred		= FUNC2(),
	};
	struct rpc_clnt		*mnt_clnt;
	int			status;

	FUNC3("NFS: sending MNT request for %s:%s\n",
		(info->hostname ? info->hostname : "server"),
			info->dirpath);

	if (FUNC7(info->dirpath) > MNTPATHLEN)
		return -ENAMETOOLONG;

	if (info->noresvport)
		args.flags |= RPC_CLNT_CREATE_NONPRIVPORT;

	mnt_clnt = FUNC5(&args);
	if (FUNC0(mnt_clnt))
		goto out_clnt_err;

	if (info->version == NFS_MNT3_VERSION)
		msg.rpc_proc = &mnt_clnt->cl_procinfo[MOUNTPROC3_MNT];
	else
		msg.rpc_proc = &mnt_clnt->cl_procinfo[MOUNTPROC_MNT];

	status = FUNC4(mnt_clnt, &msg, RPC_TASK_SOFT|RPC_TASK_TIMEOUT);
	FUNC6(mnt_clnt);

	if (status < 0)
		goto out_call_err;
	if (result.errno != 0)
		goto out_mnt_err;

	FUNC3("NFS: MNT request succeeded\n");
	status = 0;

	/*
	 * If the server didn't provide a flavor list, allow the
	 * client to try any flavor.
	 */
	if (info->version != NFS_MNT3_VERSION || *info->auth_flav_len == 0) {
		FUNC3("NFS: Faking up auth_flavs list\n");
		info->auth_flavs[0] = RPC_AUTH_NULL;
		*info->auth_flav_len = 1;
	}
out:
	return status;

out_clnt_err:
	status = FUNC1(mnt_clnt);
	FUNC3("NFS: failed to create MNT RPC client, status=%d\n", status);
	goto out;

out_call_err:
	FUNC3("NFS: MNT request failed, status=%d\n", status);
	goto out;

out_mnt_err:
	FUNC3("NFS: MNT server returned result %d\n", result.errno);
	status = result.errno;
	goto out;
}
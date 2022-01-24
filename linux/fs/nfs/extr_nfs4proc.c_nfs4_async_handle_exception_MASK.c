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
struct rpc_task {int dummy; } ;
struct nfs_server {int /*<<< orphan*/  mig_status; struct nfs_client* nfs_client; } ;
struct nfs_client {int /*<<< orphan*/  cl_rpcwaitq; int /*<<< orphan*/  cl_state; } ;
struct nfs4_exception {int retry; scalar_t__ recovering; int /*<<< orphan*/  timeout; scalar_t__ delay; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  NFS4CLNT_MANAGER_RUNNING ; 
 int NFS4ERR_MOVED ; 
 int /*<<< orphan*/  NFS_MIG_FAILED ; 
 int FUNC0 (struct nfs_server*,int,struct nfs4_exception*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct rpc_task*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rpc_task*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct rpc_task*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct rpc_task *task, struct nfs_server *server,
		int errorcode, struct nfs4_exception *exception)
{
	struct nfs_client *clp = server->nfs_client;
	int ret;

	ret = FUNC0(server, errorcode, exception);
	if (exception->delay) {
		FUNC2(task, FUNC1(&exception->timeout));
		goto out_retry;
	}
	if (exception->recovering) {
		FUNC3(&clp->cl_rpcwaitq, task, NULL);
		if (FUNC6(NFS4CLNT_MANAGER_RUNNING, &clp->cl_state) == 0)
			FUNC5(&clp->cl_rpcwaitq, task);
		goto out_retry;
	}
	if (FUNC6(NFS_MIG_FAILED, &server->mig_status))
		ret = -EIO;
	return ret;
out_retry:
	if (ret == 0) {
		exception->retry = 1;
		/*
		 * For NFS4ERR_MOVED, the client transport will need to
		 * be recomputed after migration recovery has completed.
		 */
		if (errorcode == -NFS4ERR_MOVED)
			FUNC4(task);
	}
	return ret;
}
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
struct rpc_task_setup {int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; struct nfs4_opendata* callback_data; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int /*<<< orphan*/  rpc_cred; struct nfs_openres* rpc_resp; struct nfs_openargs* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct nfs_openres {int /*<<< orphan*/  seq_res; } ;
struct nfs_openargs {int /*<<< orphan*/  seq_args; } ;
struct nfs_open_context {int dummy; } ;
struct nfs4_opendata {int rpc_done; int rpc_status; int cancelled; int is_recover; int /*<<< orphan*/  kref; TYPE_1__* owner; struct nfs_openres o_res; struct nfs_openargs o_arg; int /*<<< orphan*/  dir; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  so_cred; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 size_t NFSPROC4_CLNT_OPEN ; 
 struct nfs_server* FUNC1 (struct inode*) ; 
 int FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  RPC_TASK_TIMEOUT ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  nfs4_open_ops ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC6 (struct nfs4_opendata*,struct nfs_open_context*) ; 
 int /*<<< orphan*/  FUNC7 (struct rpc_task*) ; 
 struct rpc_task* FUNC8 (struct rpc_task_setup*) ; 
 int FUNC9 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int FUNC11(struct nfs4_opendata *data,
			      struct nfs_open_context *ctx)
{
	struct inode *dir = FUNC3(data->dir);
	struct nfs_server *server = FUNC1(dir);
	struct nfs_openargs *o_arg = &data->o_arg;
	struct nfs_openres *o_res = &data->o_res;
	struct rpc_task *task;
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OPEN],
		.rpc_argp = o_arg,
		.rpc_resp = o_res,
		.rpc_cred = data->owner->so_cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = server->client,
		.rpc_message = &msg,
		.callback_ops = &nfs4_open_ops,
		.callback_data = data,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};
	int status;

	FUNC4(&data->kref);
	data->rpc_done = false;
	data->rpc_status = 0;
	data->cancelled = false;
	data->is_recover = false;
	if (!ctx) {
		FUNC5(&o_arg->seq_args, &o_res->seq_res, 1, 1);
		data->is_recover = true;
		task_setup_data.flags |= RPC_TASK_TIMEOUT;
	} else {
		FUNC5(&o_arg->seq_args, &o_res->seq_res, 1, 0);
		FUNC6(data, ctx);
	}
	task = FUNC8(&task_setup_data);
	if (FUNC0(task))
		return FUNC2(task);
	status = FUNC9(task);
	if (status != 0) {
		data->cancelled = true;
		FUNC10();
	} else
		status = data->rpc_status;
	FUNC7(task);

	return status;
}
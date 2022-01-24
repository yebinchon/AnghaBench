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
struct rpc_task_setup {struct nfs42_offloadcancel_data* callback_data; int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_2__* rpc_resp; TYPE_1__* rpc_argp; int /*<<< orphan*/  rpc_cred; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int caps; int /*<<< orphan*/  client; } ;
struct nfs_open_context {int /*<<< orphan*/  cred; } ;
struct TYPE_4__ {int /*<<< orphan*/  osr_seq_res; } ;
struct TYPE_3__ {int /*<<< orphan*/  osa_seq_args; int /*<<< orphan*/  osa_stateid; int /*<<< orphan*/  osa_src_fh; } ;
struct nfs42_offloadcancel_data {TYPE_2__ res; TYPE_1__ args; struct nfs_server* seq_server; } ;
struct file {int dummy; } ;
typedef  int /*<<< orphan*/  nfs4_stateid ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTSUPP ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 size_t NFSPROC4_CLNT_OFFLOAD_CANCEL ; 
 int NFS_CAP_OFFLOAD_CANCEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct nfs_server* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 struct nfs42_offloadcancel_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  nfs42_offload_cancel_ops ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 struct nfs_open_context* FUNC8 (struct file*) ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC9 (struct rpc_task*) ; 
 struct rpc_task* FUNC10 (struct rpc_task_setup*) ; 
 int FUNC11 (struct rpc_task*) ; 

__attribute__((used)) static int FUNC12(struct file *dst,
					 nfs4_stateid *stateid)
{
	struct nfs_server *dst_server = FUNC2(FUNC4(dst));
	struct nfs42_offloadcancel_data *data = NULL;
	struct nfs_open_context *ctx = FUNC8(dst);
	struct rpc_task *task;
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OFFLOAD_CANCEL],
		.rpc_cred = ctx->cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = dst_server->client,
		.rpc_message = &msg,
		.callback_ops = &nfs42_offload_cancel_ops,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};
	int status;

	if (!(dst_server->caps & NFS_CAP_OFFLOAD_CANCEL))
		return -EOPNOTSUPP;

	data = FUNC5(sizeof(struct nfs42_offloadcancel_data), GFP_NOFS);
	if (data == NULL)
		return -ENOMEM;

	data->seq_server = dst_server;
	data->args.osa_src_fh = FUNC1(FUNC4(dst));
	FUNC6(&data->args.osa_stateid, stateid,
		sizeof(data->args.osa_stateid));
	msg.rpc_argp = &data->args;
	msg.rpc_resp = &data->res;
	task_setup_data.callback_data = data;
	FUNC7(&data->args.osa_seq_args, &data->res.osr_seq_res,
			   1, 0);
	task = FUNC10(&task_setup_data);
	if (FUNC0(task))
		return FUNC3(task);
	status = FUNC11(task);
	if (status == -ENOTSUPP)
		dst_server->caps &= ~NFS_CAP_OFFLOAD_CANCEL;
	FUNC9(task);
	return status;
}
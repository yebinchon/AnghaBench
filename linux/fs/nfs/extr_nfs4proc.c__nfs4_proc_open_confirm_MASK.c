#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct rpc_task_setup {int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; struct nfs4_opendata* callback_data; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; int /*<<< orphan*/  rpc_client; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {int /*<<< orphan*/  rpc_cred; TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_server {int /*<<< orphan*/  client; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_5__ {int /*<<< orphan*/  seq_args; } ;
struct nfs4_opendata {int rpc_done; int rpc_status; int cancelled; int /*<<< orphan*/  timestamp; int /*<<< orphan*/  kref; int /*<<< orphan*/  is_recover; TYPE_3__ c_res; TYPE_2__ c_arg; TYPE_1__* owner; int /*<<< orphan*/  dir; } ;
struct TYPE_4__ {int /*<<< orphan*/  so_cred; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct rpc_task*) ; 
 size_t NFSPROC4_CLNT_OPEN_CONFIRM ; 
 struct nfs_server* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct rpc_task*) ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_open_confirm_ops ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 int /*<<< orphan*/  FUNC6 (struct rpc_task*) ; 
 struct rpc_task* FUNC7 (struct rpc_task_setup*) ; 
 int FUNC8 (struct rpc_task*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int FUNC10(struct nfs4_opendata *data)
{
	struct nfs_server *server = FUNC1(FUNC3(data->dir));
	struct rpc_task *task;
	struct  rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OPEN_CONFIRM],
		.rpc_argp = &data->c_arg,
		.rpc_resp = &data->c_res,
		.rpc_cred = data->owner->so_cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = server->client,
		.rpc_message = &msg,
		.callback_ops = &nfs4_open_confirm_ops,
		.callback_data = data,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};
	int status;

	FUNC5(&data->c_arg.seq_args, &data->c_res.seq_res, 1,
				data->is_recover);
	FUNC4(&data->kref);
	data->rpc_done = false;
	data->rpc_status = 0;
	data->timestamp = jiffies;
	task = FUNC7(&task_setup_data);
	if (FUNC0(task))
		return FUNC2(task);
	status = FUNC8(task);
	if (status != 0) {
		data->cancelled = true;
		FUNC9();
	} else
		status = data->rpc_status;
	FUNC6(task);
	return status;
}
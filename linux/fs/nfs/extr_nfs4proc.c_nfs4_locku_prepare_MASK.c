#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct rpc_task {int /*<<< orphan*/ * tk_action; } ;
struct TYPE_11__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_10__ {int /*<<< orphan*/  seqid; int /*<<< orphan*/  seq_args; } ;
struct nfs4_unlockdata {TYPE_5__ res; TYPE_4__ arg; TYPE_3__* server; int /*<<< orphan*/  timestamp; TYPE_2__* lsp; TYPE_6__* l_ctx; } ;
struct TYPE_12__ {TYPE_1__* open_context; } ;
struct TYPE_9__ {int /*<<< orphan*/  nfs_client; } ;
struct TYPE_8__ {int /*<<< orphan*/  ls_flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_CONTEXT_UNLOCK ; 
 int /*<<< orphan*/  NFS_LOCK_INITIALIZED ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct rpc_task*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct rpc_task*) ; 
 scalar_t__ FUNC2 (struct rpc_task*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct rpc_task*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rpc_task *task, void *data)
{
	struct nfs4_unlockdata *calldata = data;

	if (FUNC5(NFS_CONTEXT_UNLOCK, &calldata->l_ctx->open_context->flags) &&
		FUNC2(task, calldata->l_ctx))
		return;

	if (FUNC4(calldata->arg.seqid, task) != 0)
		goto out_wait;
	if (FUNC5(NFS_LOCK_INITIALIZED, &calldata->lsp->ls_flags) == 0) {
		/* Note: exit _without_ running nfs4_locku_done */
		goto out_no_action;
	}
	calldata->timestamp = jiffies;
	if (FUNC1(calldata->server->nfs_client,
				&calldata->arg.seq_args,
				&calldata->res.seq_res,
				task) != 0)
		FUNC3(calldata->arg.seqid);
	return;
out_no_action:
	task->tk_action = NULL;
out_wait:
	FUNC0(task, &calldata->res.seq_res);
}
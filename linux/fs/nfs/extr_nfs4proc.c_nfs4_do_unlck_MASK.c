#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rpc_task_setup {struct nfs4_unlockdata* callback_data; int /*<<< orphan*/  rpc_client; int /*<<< orphan*/  flags; int /*<<< orphan*/  workqueue; int /*<<< orphan*/ * callback_ops; struct rpc_message* rpc_message; } ;
struct rpc_task {int dummy; } ;
struct rpc_message {TYPE_3__* rpc_resp; TYPE_2__* rpc_argp; int /*<<< orphan*/  rpc_cred; int /*<<< orphan*/ * rpc_proc; } ;
struct nfs_seqid {int dummy; } ;
struct nfs_open_context {int /*<<< orphan*/  flags; int /*<<< orphan*/  cred; } ;
struct TYPE_7__ {int /*<<< orphan*/  seq_res; } ;
struct TYPE_6__ {int /*<<< orphan*/  seq_args; } ;
struct nfs4_unlockdata {TYPE_3__ res; TYPE_2__ arg; } ;
struct nfs4_lock_state {TYPE_1__* ls_state; } ;
struct file_lock {int fl_flags; int /*<<< orphan*/  fl_type; } ;
struct TYPE_8__ {int /*<<< orphan*/  nfs_client; } ;
struct TYPE_5__ {int /*<<< orphan*/  inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct rpc_task* FUNC0 (int /*<<< orphan*/ ) ; 
 int FL_CLOSE ; 
 int /*<<< orphan*/  F_UNLCK ; 
 size_t NFSPROC4_CLNT_LOCKU ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_CONTEXT_UNLOCK ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFS_SP4_MACH_CRED_CLEANUP ; 
 int /*<<< orphan*/  RPC_TASK_ASYNC ; 
 struct nfs4_unlockdata* FUNC3 (struct file_lock*,struct nfs_open_context*,struct nfs4_lock_state*,struct nfs_seqid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfs4_locku_ops ; 
 int /*<<< orphan*/ * nfs4_procedures ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct rpc_message*) ; 
 int /*<<< orphan*/  FUNC6 (struct nfs_seqid*) ; 
 int /*<<< orphan*/  nfsiod_workqueue ; 
 struct rpc_task* FUNC7 (struct rpc_task_setup*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct rpc_task *FUNC9(struct file_lock *fl,
		struct nfs_open_context *ctx,
		struct nfs4_lock_state *lsp,
		struct nfs_seqid *seqid)
{
	struct nfs4_unlockdata *data;
	struct rpc_message msg = {
		.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_LOCKU],
		.rpc_cred = ctx->cred,
	};
	struct rpc_task_setup task_setup_data = {
		.rpc_client = FUNC1(lsp->ls_state->inode),
		.rpc_message = &msg,
		.callback_ops = &nfs4_locku_ops,
		.workqueue = nfsiod_workqueue,
		.flags = RPC_TASK_ASYNC,
	};

	FUNC5(FUNC2(lsp->ls_state->inode)->nfs_client,
		NFS_SP4_MACH_CRED_CLEANUP, &task_setup_data.rpc_client, &msg);

	/* Ensure this is an unlock - when canceling a lock, the
	 * canceled lock is passed in, and it won't be an unlock.
	 */
	fl->fl_type = F_UNLCK;
	if (fl->fl_flags & FL_CLOSE)
		FUNC8(NFS_CONTEXT_UNLOCK, &ctx->flags);

	data = FUNC3(fl, ctx, lsp, seqid);
	if (data == NULL) {
		FUNC6(seqid);
		return FUNC0(-ENOMEM);
	}

	FUNC4(&data->arg.seq_args, &data->res.seq_res, 1, 0);
	msg.rpc_argp = &data->arg;
	msg.rpc_resp = &data->res;
	task_setup_data.callback_data = data;
	return FUNC7(&task_setup_data);
}

typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct rpc_task {int * tk_action; } ;
struct TYPE_11__ {int seq_res; } ;
struct TYPE_10__ {int seqid; int seq_args; } ;
struct nfs4_unlockdata {TYPE_5__ res; TYPE_4__ arg; TYPE_3__* server; int timestamp; TYPE_2__* lsp; TYPE_6__* l_ctx; } ;
struct TYPE_12__ {TYPE_1__* open_context; } ;
struct TYPE_9__ {int nfs_client; } ;
struct TYPE_8__ {int ls_flags; } ;
struct TYPE_7__ {int flags; } ;


 int NFS_CONTEXT_UNLOCK ;
 int NFS_LOCK_INITIALIZED ;
 int jiffies ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 scalar_t__ nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 scalar_t__ nfs_async_iocounter_wait (struct rpc_task*,TYPE_6__*) ;
 int nfs_release_seqid (int ) ;
 scalar_t__ nfs_wait_on_sequence (int ,struct rpc_task*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs4_locku_prepare(struct rpc_task *task, void *data)
{
 struct nfs4_unlockdata *calldata = data;

 if (test_bit(NFS_CONTEXT_UNLOCK, &calldata->l_ctx->open_context->flags) &&
  nfs_async_iocounter_wait(task, calldata->l_ctx))
  return;

 if (nfs_wait_on_sequence(calldata->arg.seqid, task) != 0)
  goto out_wait;
 if (test_bit(NFS_LOCK_INITIALIZED, &calldata->lsp->ls_flags) == 0) {

  goto out_no_action;
 }
 calldata->timestamp = jiffies;
 if (nfs4_setup_sequence(calldata->server->nfs_client,
    &calldata->arg.seq_args,
    &calldata->res.seq_res,
    task) != 0)
  nfs_release_seqid(calldata->arg.seqid);
 return;
out_no_action:
 task->tk_action = ((void*)0);
out_wait:
 nfs4_sequence_done(task, &calldata->res.seq_res);
}

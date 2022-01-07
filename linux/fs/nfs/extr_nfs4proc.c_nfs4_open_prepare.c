
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int * rpc_proc; } ;
struct rpc_task {int * tk_action; TYPE_2__ tk_msg; } ;
struct nfs_delegation {int dummy; } ;
struct nfs_client {TYPE_4__* cl_mvops; int cl_clientid; } ;
struct nfs4_state_owner {TYPE_1__* so_server; } ;
struct TYPE_14__ {int seq_res; } ;
struct TYPE_13__ {int claim; int open_flags; int createmode; int seqid; int seq_args; TYPE_3__* server; int * open_bitmap; int clientid; int fmode; } ;
struct nfs4_opendata {TYPE_6__ o_res; TYPE_7__* state; TYPE_5__ o_arg; int timestamp; struct nfs4_state_owner* owner; } ;
typedef enum open_claim_type4 { ____Placeholder_open_claim_type4 } open_claim_type4 ;
struct TYPE_15__ {int inode; } ;
struct TYPE_12__ {scalar_t__ minor_version; } ;
struct TYPE_11__ {int nfs_client; } ;
struct TYPE_9__ {struct nfs_client* nfs_client; } ;


 int NFS4_CREATE_EXCLUSIVE ;
 int NFS4_CREATE_EXCLUSIVE4_1 ;
 int NFS4_CREATE_GUARDED ;
 int NFS4_CREATE_UNCHECKED ;




 size_t NFSPROC4_CLNT_OPEN_NOATTR ;
 int O_EXCL ;
 scalar_t__ can_open_cached (TYPE_7__*,int ,int,int) ;
 scalar_t__ can_open_delegated (struct nfs_delegation*,int ,int) ;
 int jiffies ;
 struct nfs_delegation* nfs4_get_valid_delegation (int ) ;
 scalar_t__ nfs4_has_persistent_session (struct nfs_client*) ;
 int * nfs4_open_noattr_bitmap ;
 int * nfs4_procedures ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 scalar_t__ nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;
 int nfs_release_seqid (int ) ;
 scalar_t__ nfs_wait_on_sequence (int ,struct rpc_task*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int trace_nfs4_cached_open (TYPE_7__*) ;

__attribute__((used)) static void nfs4_open_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs4_opendata *data = calldata;
 struct nfs4_state_owner *sp = data->owner;
 struct nfs_client *clp = sp->so_server->nfs_client;
 enum open_claim_type4 claim = data->o_arg.claim;

 if (nfs_wait_on_sequence(data->o_arg.seqid, task) != 0)
  goto out_wait;




 if (data->state != ((void*)0)) {
  struct nfs_delegation *delegation;

  if (can_open_cached(data->state, data->o_arg.fmode,
     data->o_arg.open_flags, claim))
   goto out_no_action;
  rcu_read_lock();
  delegation = nfs4_get_valid_delegation(data->state->inode);
  if (can_open_delegated(delegation, data->o_arg.fmode, claim))
   goto unlock_no_action;
  rcu_read_unlock();
 }

 data->o_arg.clientid = clp->cl_clientid;
 switch (claim) {
 default:
  break;
 case 128:
 case 131:
 case 130:
  data->o_arg.open_bitmap = &nfs4_open_noattr_bitmap[0];

 case 129:
  task->tk_msg.rpc_proc = &nfs4_procedures[NFSPROC4_CLNT_OPEN_NOATTR];
 }
 data->timestamp = jiffies;
 if (nfs4_setup_sequence(data->o_arg.server->nfs_client,
    &data->o_arg.seq_args,
    &data->o_res.seq_res,
    task) != 0)
  nfs_release_seqid(data->o_arg.seqid);


 data->o_arg.createmode = NFS4_CREATE_UNCHECKED;
 if (data->o_arg.open_flags & O_EXCL) {
  data->o_arg.createmode = NFS4_CREATE_EXCLUSIVE;
  if (nfs4_has_persistent_session(clp))
   data->o_arg.createmode = NFS4_CREATE_GUARDED;
  else if (clp->cl_mvops->minor_version > 0)
   data->o_arg.createmode = NFS4_CREATE_EXCLUSIVE4_1;
 }
 return;
unlock_no_action:
 trace_nfs4_cached_open(data->state);
 rcu_read_unlock();
out_no_action:
 task->tk_action = ((void*)0);
out_wait:
 nfs4_sequence_done(task, &data->o_res.seq_res);
}

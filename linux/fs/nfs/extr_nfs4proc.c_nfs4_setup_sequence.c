
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_client {struct nfs4_slot_table* cl_slot_tbl; } ;
struct nfs4_slot_table {int slot_tbl_lock; int slot_tbl_waitq; } ;
struct nfs4_slot {int dummy; } ;
struct nfs4_session {struct nfs4_slot_table fc_slot_table; } ;
struct nfs4_sequence_res {int * sr_slot; } ;
struct nfs4_sequence_args {scalar_t__ sa_privileged; } ;


 int EAGAIN ;
 int ENOMEM ;
 struct nfs4_slot* ERR_PTR (int ) ;
 int HZ ;
 scalar_t__ IS_ERR (struct nfs4_slot*) ;
 int RPC_PRIORITY_PRIVILEGED ;
 scalar_t__ jiffies ;
 int nfs41_sequence_res_init (struct nfs4_sequence_res*) ;
 struct nfs4_slot* nfs4_alloc_slot (struct nfs4_slot_table*) ;
 struct nfs4_session* nfs4_get_session (struct nfs_client*) ;
 int nfs4_sequence_attach_slot (struct nfs4_sequence_args*,struct nfs4_sequence_res*,struct nfs4_slot*) ;
 scalar_t__ nfs4_slot_tbl_draining (struct nfs4_slot_table*) ;
 int rpc_call_start (struct rpc_task*) ;
 int rpc_sleep_on (int *,struct rpc_task*,int *) ;
 int rpc_sleep_on_priority (int *,struct rpc_task*,int ) ;
 int rpc_sleep_on_priority_timeout (int *,struct rpc_task*,scalar_t__,int ) ;
 int rpc_sleep_on_timeout (int *,struct rpc_task*,int *,scalar_t__) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_nfs4_setup_sequence (struct nfs4_session*,struct nfs4_sequence_args*) ;

int nfs4_setup_sequence(struct nfs_client *client,
   struct nfs4_sequence_args *args,
   struct nfs4_sequence_res *res,
   struct rpc_task *task)
{
 struct nfs4_session *session = nfs4_get_session(client);
 struct nfs4_slot_table *tbl = client->cl_slot_tbl;
 struct nfs4_slot *slot;


 if (res->sr_slot != ((void*)0))
  goto out_start;

 if (session)
  tbl = &session->fc_slot_table;

 spin_lock(&tbl->slot_tbl_lock);

 if (nfs4_slot_tbl_draining(tbl) && !args->sa_privileged)
  goto out_sleep;

 slot = nfs4_alloc_slot(tbl);
 if (IS_ERR(slot)) {
  if (slot == ERR_PTR(-ENOMEM))
   goto out_sleep_timeout;
  goto out_sleep;
 }
 spin_unlock(&tbl->slot_tbl_lock);

 nfs4_sequence_attach_slot(args, res, slot);

 trace_nfs4_setup_sequence(session, args);
out_start:
 nfs41_sequence_res_init(res);
 rpc_call_start(task);
 return 0;
out_sleep_timeout:

 if (args->sa_privileged)
  rpc_sleep_on_priority_timeout(&tbl->slot_tbl_waitq, task,
    jiffies + (HZ >> 2), RPC_PRIORITY_PRIVILEGED);
 else
  rpc_sleep_on_timeout(&tbl->slot_tbl_waitq, task,
    ((void*)0), jiffies + (HZ >> 2));
 spin_unlock(&tbl->slot_tbl_lock);
 return -EAGAIN;
out_sleep:
 if (args->sa_privileged)
  rpc_sleep_on_priority(&tbl->slot_tbl_waitq, task,
    RPC_PRIORITY_PRIVILEGED);
 else
  rpc_sleep_on(&tbl->slot_tbl_waitq, task, ((void*)0));
 spin_unlock(&tbl->slot_tbl_lock);
 return -EAGAIN;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_2__ {int osr_seq_res; } ;
struct nfs42_offloadcancel_data {int seq_server; TYPE_1__ res; } ;


 int EAGAIN ;
 int nfs41_sequence_done (struct rpc_task*,int *) ;
 int nfs4_async_handle_error (struct rpc_task*,int ,int *,int *) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;

__attribute__((used)) static void nfs42_offload_cancel_done(struct rpc_task *task, void *calldata)
{
 struct nfs42_offloadcancel_data *data = calldata;

 nfs41_sequence_done(task, &data->res.osr_seq_res);
 if (task->tk_status &&
  nfs4_async_handle_error(task, data->seq_server, ((void*)0),
   ((void*)0)) == -EAGAIN)
  rpc_restart_call_prepare(task);
}

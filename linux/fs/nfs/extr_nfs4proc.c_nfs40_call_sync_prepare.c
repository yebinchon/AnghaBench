
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs4_call_sync_data {int seq_res; int seq_args; TYPE_1__* seq_server; } ;
struct TYPE_2__ {int nfs_client; } ;


 int nfs4_setup_sequence (int ,int ,int ,struct rpc_task*) ;

__attribute__((used)) static void nfs40_call_sync_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs4_call_sync_data *data = calldata;
 nfs4_setup_sequence(data->seq_server->nfs_client,
    data->seq_args, data->seq_res, task);
}

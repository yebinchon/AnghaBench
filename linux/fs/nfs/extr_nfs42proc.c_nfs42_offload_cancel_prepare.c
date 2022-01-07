
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_6__ {int osr_seq_res; } ;
struct TYPE_5__ {int osa_seq_args; } ;
struct nfs42_offloadcancel_data {TYPE_3__ res; TYPE_2__ args; TYPE_1__* seq_server; } ;
struct TYPE_4__ {int nfs_client; } ;


 int nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;

__attribute__((used)) static void nfs42_offload_cancel_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs42_offloadcancel_data *data = calldata;

 nfs4_setup_sequence(data->seq_server->nfs_client,
    &data->args.osa_seq_args,
    &data->res.osr_seq_res, task);
}

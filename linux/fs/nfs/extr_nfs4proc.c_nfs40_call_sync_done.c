
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs4_call_sync_data {int seq_res; } ;


 int nfs4_sequence_done (struct rpc_task*,int ) ;

__attribute__((used)) static void nfs40_call_sync_done(struct rpc_task *task, void *calldata)
{
 struct nfs4_call_sync_data *data = calldata;
 nfs4_sequence_done(task, data->seq_res);
}

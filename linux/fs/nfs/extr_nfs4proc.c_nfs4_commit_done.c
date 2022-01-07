
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_2__ {int seq_res; } ;
struct nfs_commit_data {int (* commit_done_cb ) (struct rpc_task*,struct nfs_commit_data*) ;TYPE_1__ res; } ;


 int EAGAIN ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 int stub1 (struct rpc_task*,struct nfs_commit_data*) ;

__attribute__((used)) static int nfs4_commit_done(struct rpc_task *task, struct nfs_commit_data *data)
{
 if (!nfs4_sequence_done(task, &data->res.seq_res))
  return -EAGAIN;
 return data->commit_done_cb(task, data);
}

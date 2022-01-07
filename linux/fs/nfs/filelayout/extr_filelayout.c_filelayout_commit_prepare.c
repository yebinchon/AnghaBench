
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct TYPE_4__ {int seq_res; } ;
struct TYPE_3__ {int seq_args; } ;
struct nfs_commit_data {TYPE_2__ res; TYPE_1__ args; int ds_clp; } ;


 int nfs4_setup_sequence (int ,int *,int *,struct rpc_task*) ;

__attribute__((used)) static void filelayout_commit_prepare(struct rpc_task *task, void *data)
{
 struct nfs_commit_data *wdata = data;

 nfs4_setup_sequence(wdata->ds_clp,
   &wdata->args.seq_args,
   &wdata->res.seq_res,
   task);
}

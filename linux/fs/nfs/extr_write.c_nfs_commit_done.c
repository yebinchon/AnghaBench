
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int tk_status; int tk_pid; } ;
struct nfs_commit_data {int inode; } ;
struct TYPE_2__ {int (* commit_done ) (struct rpc_task*,struct nfs_commit_data*) ;} ;


 TYPE_1__* NFS_PROTO (int ) ;
 int dprintk (char*,int ,int ) ;
 int stub1 (struct rpc_task*,struct nfs_commit_data*) ;
 int trace_nfs_commit_done (struct nfs_commit_data*) ;

__attribute__((used)) static void nfs_commit_done(struct rpc_task *task, void *calldata)
{
 struct nfs_commit_data *data = calldata;

        dprintk("NFS: %5u nfs_commit_done (status %d)\n",
                                task->tk_pid, task->tk_status);


 NFS_PROTO(data->inode)->commit_done(task, data);
 trace_nfs_commit_done(data);
}

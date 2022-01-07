
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; struct nfs_unlinkdata* tk_calldata; } ;
struct nfs_removeres {TYPE_1__* dir_attr; int cinfo; int server; int seq_res; } ;
struct nfs_unlinkdata {int timeout; struct nfs_removeres res; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {int time_start; } ;


 int EAGAIN ;
 int nfs4_async_handle_error (struct rpc_task*,int ,int *,int *) ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 int update_changeattr (struct inode*,int *,int ,int ) ;

__attribute__((used)) static int nfs4_proc_unlink_done(struct rpc_task *task, struct inode *dir)
{
 struct nfs_unlinkdata *data = task->tk_calldata;
 struct nfs_removeres *res = &data->res;

 if (!nfs4_sequence_done(task, &res->seq_res))
  return 0;
 if (nfs4_async_handle_error(task, res->server, ((void*)0),
        &data->timeout) == -EAGAIN)
  return 0;
 if (task->tk_status == 0)
  update_changeattr(dir, &res->cinfo,
    res->dir_attr->time_start, 0);
 return 1;
}

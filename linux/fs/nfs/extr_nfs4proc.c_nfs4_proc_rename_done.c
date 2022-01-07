
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; struct nfs_renamedata* tk_calldata; } ;
struct nfs_renameres {TYPE_2__* old_fattr; int old_cinfo; TYPE_1__* new_fattr; int new_cinfo; int server; int seq_res; } ;
struct nfs_renamedata {int timeout; struct nfs_renameres res; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {int time_start; } ;
struct TYPE_3__ {int time_start; } ;


 int EAGAIN ;
 int NFS_INO_INVALID_OTHER ;
 int nfs4_async_handle_error (struct rpc_task*,int ,int *,int *) ;
 int nfs4_sequence_done (struct rpc_task*,int *) ;
 int update_changeattr (struct inode*,int *,int ,int ) ;

__attribute__((used)) static int nfs4_proc_rename_done(struct rpc_task *task, struct inode *old_dir,
     struct inode *new_dir)
{
 struct nfs_renamedata *data = task->tk_calldata;
 struct nfs_renameres *res = &data->res;

 if (!nfs4_sequence_done(task, &res->seq_res))
  return 0;
 if (nfs4_async_handle_error(task, res->server, ((void*)0), &data->timeout) == -EAGAIN)
  return 0;

 if (task->tk_status == 0) {
  if (new_dir != old_dir) {

   update_changeattr(old_dir, &res->old_cinfo,
     res->old_fattr->time_start,
     NFS_INO_INVALID_OTHER);
   update_changeattr(new_dir, &res->new_cinfo,
     res->new_fattr->time_start,
     NFS_INO_INVALID_OTHER);
  } else
   update_changeattr(old_dir, &res->old_cinfo,
     res->old_fattr->time_start,
     0);
 }
 return 1;
}

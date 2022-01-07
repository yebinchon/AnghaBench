
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct nfs_renameres* rpc_resp; } ;
struct rpc_task {TYPE_1__ tk_msg; } ;
struct nfs_renameres {int new_fattr; int old_fattr; } ;
struct inode {int dummy; } ;


 scalar_t__ nfs3_async_handle_jukebox (struct rpc_task*,struct inode*) ;
 int nfs_post_op_update_inode (struct inode*,int ) ;

__attribute__((used)) static int
nfs3_proc_rename_done(struct rpc_task *task, struct inode *old_dir,
        struct inode *new_dir)
{
 struct nfs_renameres *res;

 if (nfs3_async_handle_jukebox(task, old_dir))
  return 0;
 res = task->tk_msg.rpc_resp;

 nfs_post_op_update_inode(old_dir, res->old_fattr);
 nfs_post_op_update_inode(new_dir, res->new_fattr);
 return 1;
}

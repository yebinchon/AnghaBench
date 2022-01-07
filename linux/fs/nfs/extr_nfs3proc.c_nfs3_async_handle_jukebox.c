
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_status; } ;
struct inode {int dummy; } ;


 int EJUKEBOX ;
 int NFSIOS_DELAY ;
 int NFS_JUKEBOX_RETRY_TIME ;
 int nfs_inc_stats (struct inode*,int ) ;
 int rpc_delay (struct rpc_task*,int ) ;
 int rpc_restart_call (struct rpc_task*) ;

__attribute__((used)) static int
nfs3_async_handle_jukebox(struct rpc_task *task, struct inode *inode)
{
 if (task->tk_status != -EJUKEBOX)
  return 0;
 if (task->tk_status == -EJUKEBOX)
  nfs_inc_stats(inode, NFSIOS_DELAY);
 task->tk_status = 0;
 rpc_restart_call(task);
 rpc_delay(task, NFS_JUKEBOX_RETRY_TIME);
 return 1;
}

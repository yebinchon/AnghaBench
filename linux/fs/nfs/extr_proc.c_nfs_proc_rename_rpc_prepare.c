
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_renamedata {int dummy; } ;


 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void nfs_proc_rename_rpc_prepare(struct rpc_task *task, struct nfs_renamedata *data)
{
 rpc_call_start(task);
}

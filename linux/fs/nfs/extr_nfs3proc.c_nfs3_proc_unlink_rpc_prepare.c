
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_unlinkdata {int dummy; } ;


 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static void nfs3_proc_unlink_rpc_prepare(struct rpc_task *task, struct nfs_unlinkdata *data)
{
 rpc_call_start(task);
}

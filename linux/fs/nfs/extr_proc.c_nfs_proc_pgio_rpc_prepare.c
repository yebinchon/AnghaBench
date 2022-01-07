
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct nfs_pgio_header {int dummy; } ;


 int rpc_call_start (struct rpc_task*) ;

__attribute__((used)) static int nfs_proc_pgio_rpc_prepare(struct rpc_task *task,
         struct nfs_pgio_header *hdr)
{
 rpc_call_start(task);
 return 0;
}

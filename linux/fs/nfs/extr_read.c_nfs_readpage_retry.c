
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int tk_ops; } ;
struct nfs_pgio_res {scalar_t__ count; } ;
struct nfs_pgio_args {int count; int pgbase; int offset; } ;
struct nfs_pgio_header {int mds_offset; int pnfs_error; int inode; struct nfs_pgio_res res; struct nfs_pgio_args args; } ;


 int EAGAIN ;
 int EIO ;
 int NFSIOS_SHORTREAD ;
 int nfs_inc_stats (int ,int ) ;
 int nfs_set_pgio_error (struct nfs_pgio_header*,int ,int ) ;
 int rpc_restart_call_prepare (struct rpc_task*) ;

__attribute__((used)) static void nfs_readpage_retry(struct rpc_task *task,
          struct nfs_pgio_header *hdr)
{
 struct nfs_pgio_args *argp = &hdr->args;
 struct nfs_pgio_res *resp = &hdr->res;


 nfs_inc_stats(hdr->inode, NFSIOS_SHORTREAD);

 if (resp->count == 0) {
  nfs_set_pgio_error(hdr, -EIO, argp->offset);
  return;
 }


 if (!task->tk_ops) {
  hdr->pnfs_error = -EAGAIN;
  return;
 }


 hdr->mds_offset += resp->count;
 argp->offset += resp->count;
 argp->pgbase += resp->count;
 argp->count -= resp->count;
 rpc_restart_call_prepare(task);
}

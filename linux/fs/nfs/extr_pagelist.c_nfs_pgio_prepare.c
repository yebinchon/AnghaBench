
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {int dummy; } ;
struct nfs_pgio_header {int inode; } ;
struct TYPE_2__ {int (* pgio_rpc_prepare ) (struct rpc_task*,struct nfs_pgio_header*) ;} ;


 TYPE_1__* NFS_PROTO (int ) ;
 int rpc_exit (struct rpc_task*,int) ;
 int stub1 (struct rpc_task*,struct nfs_pgio_header*) ;

__attribute__((used)) static void nfs_pgio_prepare(struct rpc_task *task, void *calldata)
{
 struct nfs_pgio_header *hdr = calldata;
 int err;
 err = NFS_PROTO(hdr->inode)->pgio_rpc_prepare(task, hdr);
 if (err)
  rpc_exit(task, err);
}

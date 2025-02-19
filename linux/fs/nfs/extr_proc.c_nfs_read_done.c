
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct TYPE_5__ {scalar_t__ count; int eof; TYPE_3__* fattr; } ;
struct TYPE_4__ {scalar_t__ count; scalar_t__ offset; } ;
struct nfs_pgio_header {TYPE_2__ res; TYPE_1__ args; struct inode* inode; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ size; } ;


 int nfs_invalidate_atime (struct inode*) ;
 int nfs_refresh_inode (struct inode*,TYPE_3__*) ;

__attribute__((used)) static int nfs_read_done(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
 struct inode *inode = hdr->inode;

 nfs_invalidate_atime(inode);
 if (task->tk_status >= 0) {
  nfs_refresh_inode(inode, hdr->res.fattr);



  if ((hdr->res.count == 0 && hdr->args.count > 0) ||
      hdr->args.offset + hdr->res.count >= hdr->res.fattr->size)
   hdr->res.eof = 1;
 }
 return 0;
}

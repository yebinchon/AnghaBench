
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_task {scalar_t__ tk_status; } ;
struct nfs_server {int read_hdrsize; } ;
struct TYPE_2__ {int replen; } ;
struct nfs_pgio_header {int (* pgio_done_cb ) (struct rpc_task*,struct nfs_pgio_header*) ;int fattr; TYPE_1__ res; struct inode* inode; } ;
struct inode {int dummy; } ;


 int EAGAIN ;
 struct nfs_server* NFS_SERVER (struct inode*) ;
 int cmpxchg (int *,int ,int ) ;
 scalar_t__ nfs3_async_handle_jukebox (struct rpc_task*,struct inode*) ;
 int nfs_invalidate_atime (struct inode*) ;
 int nfs_refresh_inode (struct inode*,int *) ;
 int stub1 (struct rpc_task*,struct nfs_pgio_header*) ;

__attribute__((used)) static int nfs3_read_done(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
 struct inode *inode = hdr->inode;
 struct nfs_server *server = NFS_SERVER(inode);

 if (hdr->pgio_done_cb != ((void*)0))
  return hdr->pgio_done_cb(task, hdr);

 if (nfs3_async_handle_jukebox(task, inode))
  return -EAGAIN;

 if (task->tk_status >= 0 && !server->read_hdrsize)
  cmpxchg(&server->read_hdrsize, 0, hdr->res.replen);

 nfs_invalidate_atime(inode);
 nfs_refresh_inode(inode, &hdr->fattr);
 return 0;
}

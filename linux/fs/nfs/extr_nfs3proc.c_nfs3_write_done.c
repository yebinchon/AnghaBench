
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {scalar_t__ tk_status; } ;
struct nfs_pgio_header {int (* pgio_done_cb ) (struct rpc_task*,struct nfs_pgio_header*) ;struct inode* inode; } ;
struct inode {int dummy; } ;


 int EAGAIN ;
 scalar_t__ nfs3_async_handle_jukebox (struct rpc_task*,struct inode*) ;
 int nfs_writeback_update_inode (struct nfs_pgio_header*) ;
 int stub1 (struct rpc_task*,struct nfs_pgio_header*) ;

__attribute__((used)) static int nfs3_write_done(struct rpc_task *task, struct nfs_pgio_header *hdr)
{
 struct inode *inode = hdr->inode;

 if (hdr->pgio_done_cb != ((void*)0))
  return hdr->pgio_done_cb(task, hdr);

 if (nfs3_async_handle_jukebox(task, inode))
  return -EAGAIN;
 if (task->tk_status >= 0)
  nfs_writeback_update_inode(hdr);
 return 0;
}

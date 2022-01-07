
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {scalar_t__ error; int dentry; } ;
struct inode {int i_mapping; } ;
struct file {int * private_data; } ;


 struct inode* d_inode (int ) ;
 int invalidate_inode_pages2 (int ) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int put_nfs_open_context_sync (struct nfs_open_context*) ;

void nfs_file_clear_open_context(struct file *filp)
{
 struct nfs_open_context *ctx = nfs_file_open_context(filp);

 if (ctx) {
  struct inode *inode = d_inode(ctx->dentry);





  if (ctx->error < 0)
   invalidate_inode_pages2(inode->i_mapping);
  filp->private_data = ((void*)0);
  put_nfs_open_context_sync(ctx);
 }
}

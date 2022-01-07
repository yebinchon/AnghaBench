
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int list; } ;
struct file {int private_data; } ;


 int get_nfs_open_context (struct nfs_open_context*) ;
 scalar_t__ list_empty (int *) ;
 int nfs_inode_attach_open_context (struct nfs_open_context*) ;

void nfs_file_set_open_context(struct file *filp, struct nfs_open_context *ctx)
{
 filp->private_data = get_nfs_open_context(ctx);
 if (list_empty(&ctx->list))
  nfs_inode_attach_open_context(ctx);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int ll_cred; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EACCES ;
 scalar_t__ nfs_ctx_key_to_expire (struct nfs_open_context*,struct inode*) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;

int
nfs_key_timeout_notify(struct file *filp, struct inode *inode)
{
 struct nfs_open_context *ctx = nfs_file_open_context(filp);

 if (nfs_ctx_key_to_expire(ctx, inode) &&
     !ctx->ll_cred)

  return -EACCES;
 return 0;
}

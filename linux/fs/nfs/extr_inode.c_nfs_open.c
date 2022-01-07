
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {int f_mode; } ;


 scalar_t__ IS_ERR (struct nfs_open_context*) ;
 int PTR_ERR (struct nfs_open_context*) ;
 struct nfs_open_context* alloc_nfs_open_context (int ,int ,struct file*) ;
 int file_dentry (struct file*) ;
 int nfs_file_set_open_context (struct file*,struct nfs_open_context*) ;
 int nfs_fscache_open_file (struct inode*,struct file*) ;
 int put_nfs_open_context (struct nfs_open_context*) ;

int nfs_open(struct inode *inode, struct file *filp)
{
 struct nfs_open_context *ctx;

 ctx = alloc_nfs_open_context(file_dentry(filp), filp->f_mode, filp);
 if (IS_ERR(ctx))
  return PTR_ERR(ctx);
 nfs_file_set_open_context(filp, ctx);
 put_nfs_open_context(ctx);
 nfs_fscache_open_file(inode, filp);
 return 0;
}

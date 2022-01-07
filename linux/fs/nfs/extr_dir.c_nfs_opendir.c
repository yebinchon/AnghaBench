
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_dir_context {int dummy; } ;
struct inode {int dummy; } ;
struct file {struct nfs_open_dir_context* private_data; } ;


 int FILE ;
 scalar_t__ IS_ERR (struct nfs_open_dir_context*) ;
 int NFSIOS_VFSOPEN ;
 int PTR_ERR (struct nfs_open_dir_context*) ;
 struct nfs_open_dir_context* alloc_nfs_open_dir_context (struct inode*,int ) ;
 int current_cred () ;
 int dfprintk (int ,char*,struct file*) ;
 int nfs_inc_stats (struct inode*,int ) ;

__attribute__((used)) static int
nfs_opendir(struct inode *inode, struct file *filp)
{
 int res = 0;
 struct nfs_open_dir_context *ctx;

 dfprintk(FILE, "NFS: open dir(%pD2)\n", filp);

 nfs_inc_stats(inode, NFSIOS_VFSOPEN);

 ctx = alloc_nfs_open_dir_context(inode, current_cred());
 if (IS_ERR(ctx)) {
  res = PTR_ERR(ctx);
  goto out;
 }
 filp->private_data = ctx;
out:
 return res;
}

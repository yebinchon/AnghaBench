
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_dir_context {scalar_t__ duped; scalar_t__ dir_cookie; } ;
struct inode {int dummy; } ;
struct file {scalar_t__ f_pos; struct nfs_open_dir_context* private_data; } ;
typedef scalar_t__ loff_t ;


 scalar_t__ EINVAL ;
 int FILE ;


 int dfprintk (int ,char*,struct file*,scalar_t__,int) ;
 struct inode* file_inode (struct file*) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;

__attribute__((used)) static loff_t nfs_llseek_dir(struct file *filp, loff_t offset, int whence)
{
 struct inode *inode = file_inode(filp);
 struct nfs_open_dir_context *dir_ctx = filp->private_data;

 dfprintk(FILE, "NFS: llseek dir(%pD2, %lld, %d)\n",
   filp, offset, whence);

 switch (whence) {
 default:
  return -EINVAL;
 case 128:
  if (offset < 0)
   return -EINVAL;
  inode_lock(inode);
  break;
 case 129:
  if (offset == 0)
   return filp->f_pos;
  inode_lock(inode);
  offset += filp->f_pos;
  if (offset < 0) {
   inode_unlock(inode);
   return -EINVAL;
  }
 }
 if (offset != filp->f_pos) {
  filp->f_pos = offset;
  dir_ctx->dir_cookie = 0;
  dir_ctx->duped = 0;
 }
 inode_unlock(inode);
 return offset;
}

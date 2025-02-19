
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_open_context {int flags; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int FLUSH_SYNC ;
 int NFSIOS_VFSFSYNC ;
 int NFS_CONTEXT_RESEND_WRITES ;
 int dprintk (char*,struct file*,int) ;
 int file_check_and_advance_wb_err (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int nfs_commit_inode (struct inode*,int ) ;
 struct nfs_open_context* nfs_file_open_context (struct file*) ;
 int nfs_inc_stats (struct inode*,int ) ;
 int test_and_clear_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
nfs_file_fsync_commit(struct file *file, int datasync)
{
 struct nfs_open_context *ctx = nfs_file_open_context(file);
 struct inode *inode = file_inode(file);
 int do_resend, status;
 int ret = 0;

 dprintk("NFS: fsync file(%pD2) datasync %d\n", file, datasync);

 nfs_inc_stats(inode, NFSIOS_VFSFSYNC);
 do_resend = test_and_clear_bit(NFS_CONTEXT_RESEND_WRITES, &ctx->flags);
 status = nfs_commit_inode(inode, FLUSH_SYNC);
 if (status == 0)
  status = file_check_and_advance_wb_err(file);
 if (status < 0) {
  ret = status;
  goto out;
 }
 do_resend |= test_bit(NFS_CONTEXT_RESEND_WRITES, &ctx->flags);
 if (do_resend)
  ret = -EAGAIN;
out:
 return ret;
}

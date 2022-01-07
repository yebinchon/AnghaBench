
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_3__ {int mnt; } ;
struct file {int f_version; TYPE_1__ f_path; } ;
struct dir_context {int dummy; } ;
struct TYPE_4__ {scalar_t__ ip_blkno; } ;


 int ENOENT ;
 TYPE_2__* OCFS2_I (struct inode*) ;
 struct inode* file_inode (struct file*) ;
 int mlog_errno (int) ;
 int ocfs2_dir_foreach_blk (struct inode*,int *,struct dir_context*,int) ;
 int ocfs2_inode_lock (struct inode*,int *,int ) ;
 int ocfs2_inode_lock_atime (struct inode*,int ,int*,int) ;
 int ocfs2_inode_unlock (struct inode*,int) ;
 int trace_ocfs2_readdir (unsigned long long) ;

int ocfs2_readdir(struct file *file, struct dir_context *ctx)
{
 int error = 0;
 struct inode *inode = file_inode(file);
 int lock_level = 0;

 trace_ocfs2_readdir((unsigned long long)OCFS2_I(inode)->ip_blkno);

 error = ocfs2_inode_lock_atime(inode, file->f_path.mnt, &lock_level, 1);
 if (lock_level && error >= 0) {



  ocfs2_inode_unlock(inode, 1);
  lock_level = 0;
  error = ocfs2_inode_lock(inode, ((void*)0), 0);
 }
 if (error < 0) {
  if (error != -ENOENT)
   mlog_errno(error);

  goto bail_nolock;
 }

 error = ocfs2_dir_foreach_blk(inode, &file->f_version, ctx, 0);

 ocfs2_inode_unlock(inode, lock_level);
 if (error)
  mlog_errno(error);

bail_nolock:

 return error;
}

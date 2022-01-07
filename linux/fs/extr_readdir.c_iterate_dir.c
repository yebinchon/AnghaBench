
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_rwsem; } ;
struct file {int f_pos; TYPE_1__* f_op; } ;
struct dir_context {int pos; } ;
struct TYPE_2__ {int (* iterate_shared ) (struct file*,struct dir_context*) ;int (* iterate ) (struct file*,struct dir_context*) ;} ;


 int ENOENT ;
 int ENOTDIR ;
 int IS_DEADDIR (struct inode*) ;
 int MAY_READ ;
 int down_read_killable (int *) ;
 int down_write_killable (int *) ;
 int file_accessed (struct file*) ;
 struct inode* file_inode (struct file*) ;
 int fsnotify_access (struct file*) ;
 int inode_unlock (struct inode*) ;
 int inode_unlock_shared (struct inode*) ;
 int security_file_permission (struct file*,int ) ;
 int stub1 (struct file*,struct dir_context*) ;
 int stub2 (struct file*,struct dir_context*) ;

int iterate_dir(struct file *file, struct dir_context *ctx)
{
 struct inode *inode = file_inode(file);
 bool shared = 0;
 int res = -ENOTDIR;
 if (file->f_op->iterate_shared)
  shared = 1;
 else if (!file->f_op->iterate)
  goto out;

 res = security_file_permission(file, MAY_READ);
 if (res)
  goto out;

 if (shared)
  res = down_read_killable(&inode->i_rwsem);
 else
  res = down_write_killable(&inode->i_rwsem);
 if (res)
  goto out;

 res = -ENOENT;
 if (!IS_DEADDIR(inode)) {
  ctx->pos = file->f_pos;
  if (shared)
   res = file->f_op->iterate_shared(file, ctx);
  else
   res = file->f_op->iterate(file, ctx);
  file->f_pos = ctx->pos;
  fsnotify_access(file);
  file_accessed(file);
 }
 if (shared)
  inode_unlock_shared(inode);
 else
  inode_unlock(inode);
out:
 return res;
}

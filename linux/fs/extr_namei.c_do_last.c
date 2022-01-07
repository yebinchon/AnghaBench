
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct path {struct dentry* dentry; } ;
struct open_flags {int open_flag; int acc_mode; int intent; } ;
struct TYPE_8__ {int mnt; struct dentry* dentry; } ;
struct TYPE_6__ {int* name; size_t len; } ;
struct nameidata {int flags; scalar_t__ last_type; scalar_t__ inode; TYPE_3__ path; int name; TYPE_1__ last; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {struct dentry* dentry; } ;
struct file {int f_mode; TYPE_2__ f_path; } ;
struct dentry {scalar_t__ d_inode; } ;
struct TYPE_9__ {int i_mode; } ;


 int AUDIT_INODE_PARENT ;
 int BUG_ON (int) ;
 int EEXIST ;
 int EINVAL ;
 int EISDIR ;
 int ENOENT ;
 int ENOTDIR ;
 int FMODE_CREATED ;
 int FMODE_OPENED ;
 scalar_t__ LAST_NORM ;
 int LOOKUP_DIRECTORY ;
 int LOOKUP_FOLLOW ;
 int LOOKUP_PARENT ;
 int LOOKUP_RCU ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDWR ;
 int O_TRUNC ;
 int O_WRONLY ;
 int S_ISREG (int ) ;
 int WARN_ON (int) ;
 int audit_inode (int ,struct dentry*,int ) ;
 int complete_walk (struct nameidata*) ;
 struct inode* d_backing_inode (struct dentry*) ;
 int d_can_lookup (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int d_is_negative (struct dentry*) ;
 int d_is_reg (struct dentry*) ;
 TYPE_5__* file_inode (struct file*) ;
 int follow_managed (struct path*,struct nameidata*) ;
 int handle_dots (struct nameidata*,scalar_t__) ;
 int handle_truncate (struct file*) ;
 int ima_file_check (struct file*,int) ;
 int inode_lock (scalar_t__) ;
 int inode_lock_shared (scalar_t__) ;
 int inode_unlock (scalar_t__) ;
 int inode_unlock_shared (scalar_t__) ;
 scalar_t__ likely (int) ;
 int lookup_fast (struct nameidata*,struct path*,struct inode**,unsigned int*) ;
 int lookup_open (struct nameidata*,struct path*,struct file*,struct open_flags const*,int) ;
 int may_create_in_sticky (struct dentry*,struct inode*) ;
 int may_open (TYPE_3__*,int,int) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int path_to_nameidata (struct path*,struct nameidata*) ;
 int step_into (struct nameidata*,struct path*,int ,struct inode*,unsigned int) ;
 scalar_t__ unlikely (int) ;
 int vfs_open (TYPE_3__*,struct file*) ;

__attribute__((used)) static int do_last(struct nameidata *nd,
     struct file *file, const struct open_flags *op)
{
 struct dentry *dir = nd->path.dentry;
 int open_flag = op->open_flag;
 bool will_truncate = (open_flag & O_TRUNC) != 0;
 bool got_write = 0;
 int acc_mode = op->acc_mode;
 unsigned seq;
 struct inode *inode;
 struct path path;
 int error;

 nd->flags &= ~LOOKUP_PARENT;
 nd->flags |= op->intent;

 if (nd->last_type != LAST_NORM) {
  error = handle_dots(nd, nd->last_type);
  if (unlikely(error))
   return error;
  goto finish_open;
 }

 if (!(open_flag & O_CREAT)) {
  if (nd->last.name[nd->last.len])
   nd->flags |= LOOKUP_FOLLOW | LOOKUP_DIRECTORY;

  error = lookup_fast(nd, &path, &inode, &seq);
  if (likely(error > 0))
   goto finish_lookup;

  if (error < 0)
   return error;

  BUG_ON(nd->inode != dir->d_inode);
  BUG_ON(nd->flags & LOOKUP_RCU);
 } else {






  error = complete_walk(nd);
  if (error)
   return error;

  audit_inode(nd->name, dir, AUDIT_INODE_PARENT);

  if (unlikely(nd->last.name[nd->last.len]))
   return -EISDIR;
 }

 if (open_flag & (O_CREAT | O_TRUNC | O_WRONLY | O_RDWR)) {
  error = mnt_want_write(nd->path.mnt);
  if (!error)
   got_write = 1;





 }
 if (open_flag & O_CREAT)
  inode_lock(dir->d_inode);
 else
  inode_lock_shared(dir->d_inode);
 error = lookup_open(nd, &path, file, op, got_write);
 if (open_flag & O_CREAT)
  inode_unlock(dir->d_inode);
 else
  inode_unlock_shared(dir->d_inode);

 if (error)
  goto out;

 if (file->f_mode & FMODE_OPENED) {
  if ((file->f_mode & FMODE_CREATED) ||
      !S_ISREG(file_inode(file)->i_mode))
   will_truncate = 0;

  audit_inode(nd->name, file->f_path.dentry, 0);
  goto opened;
 }

 if (file->f_mode & FMODE_CREATED) {

  open_flag &= ~O_TRUNC;
  will_truncate = 0;
  acc_mode = 0;
  path_to_nameidata(&path, nd);
  goto finish_open_created;
 }






 if (got_write) {
  mnt_drop_write(nd->path.mnt);
  got_write = 0;
 }

 error = follow_managed(&path, nd);
 if (unlikely(error < 0))
  return error;

 if (unlikely(d_is_negative(path.dentry))) {
  path_to_nameidata(&path, nd);
  return -ENOENT;
 }




 audit_inode(nd->name, path.dentry, 0);

 if (unlikely((open_flag & (O_EXCL | O_CREAT)) == (O_EXCL | O_CREAT))) {
  path_to_nameidata(&path, nd);
  return -EEXIST;
 }

 seq = 0;
 inode = d_backing_inode(path.dentry);
finish_lookup:
 error = step_into(nd, &path, 0, inode, seq);
 if (unlikely(error))
  return error;
finish_open:

 error = complete_walk(nd);
 if (error)
  return error;
 audit_inode(nd->name, nd->path.dentry, 0);
 if (open_flag & O_CREAT) {
  error = -EISDIR;
  if (d_is_dir(nd->path.dentry))
   goto out;
  error = may_create_in_sticky(dir,
          d_backing_inode(nd->path.dentry));
  if (unlikely(error))
   goto out;
 }
 error = -ENOTDIR;
 if ((nd->flags & LOOKUP_DIRECTORY) && !d_can_lookup(nd->path.dentry))
  goto out;
 if (!d_is_reg(nd->path.dentry))
  will_truncate = 0;

 if (will_truncate) {
  error = mnt_want_write(nd->path.mnt);
  if (error)
   goto out;
  got_write = 1;
 }
finish_open_created:
 error = may_open(&nd->path, acc_mode, open_flag);
 if (error)
  goto out;
 BUG_ON(file->f_mode & FMODE_OPENED);
 error = vfs_open(&nd->path, file);
 if (error)
  goto out;
opened:
 error = ima_file_check(file, op->acc_mode);
 if (!error && will_truncate)
  error = handle_truncate(file);
out:
 if (unlikely(error > 0)) {
  WARN_ON(1);
  error = -EINVAL;
 }
 if (got_write)
  mnt_drop_write(nd->path.mnt);
 return error;
}

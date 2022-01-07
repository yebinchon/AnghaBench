
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct name_snapshot {int name; } ;
struct inode {unsigned int i_nlink; TYPE_3__* i_sb; int i_flags; TYPE_1__* i_op; } ;
struct dentry {int d_name; struct inode* d_inode; } ;
struct TYPE_6__ {unsigned int s_max_links; TYPE_2__* s_type; } ;
struct TYPE_5__ {int fs_flags; } ;
struct TYPE_4__ {int (* rename ) (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;} ;


 int EBUSY ;
 int EMLINK ;
 int EPERM ;
 int FS_RENAME_DOES_D_MOVE ;
 int MAY_WRITE ;
 unsigned int RENAME_EXCHANGE ;
 int S_DEAD ;
 int d_exchange (struct dentry*,struct dentry*) ;
 int d_is_dir (struct dentry*) ;
 int d_move (struct dentry*,struct dentry*) ;
 int detach_mounts (struct dentry*) ;
 int dget (struct dentry*) ;
 int dont_mount (struct dentry*) ;
 int dput (struct dentry*) ;
 int fsnotify_move (struct inode*,struct inode*,int *,int,struct inode*,struct dentry*) ;
 int inode_lock (struct inode*) ;
 int inode_permission (struct inode*,int ) ;
 int inode_unlock (struct inode*) ;
 scalar_t__ is_local_mountpoint (struct dentry*) ;
 int lock_two_nondirectories (struct inode*,struct inode*) ;
 int may_create (struct inode*,struct dentry*) ;
 int may_delete (struct inode*,struct dentry*,int) ;
 int release_dentry_name_snapshot (struct name_snapshot*) ;
 int security_inode_rename (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 int shrink_dcache_parent (struct dentry*) ;
 int stub1 (struct inode*,struct dentry*,struct inode*,struct dentry*,unsigned int) ;
 int take_dentry_name_snapshot (struct name_snapshot*,struct dentry*) ;
 int try_break_deleg (struct inode*,struct inode**) ;
 int unlock_two_nondirectories (struct inode*,struct inode*) ;

int vfs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry,
        struct inode **delegated_inode, unsigned int flags)
{
 int error;
 bool is_dir = d_is_dir(old_dentry);
 struct inode *source = old_dentry->d_inode;
 struct inode *target = new_dentry->d_inode;
 bool new_is_dir = 0;
 unsigned max_links = new_dir->i_sb->s_max_links;
 struct name_snapshot old_name;

 if (source == target)
  return 0;

 error = may_delete(old_dir, old_dentry, is_dir);
 if (error)
  return error;

 if (!target) {
  error = may_create(new_dir, new_dentry);
 } else {
  new_is_dir = d_is_dir(new_dentry);

  if (!(flags & RENAME_EXCHANGE))
   error = may_delete(new_dir, new_dentry, is_dir);
  else
   error = may_delete(new_dir, new_dentry, new_is_dir);
 }
 if (error)
  return error;

 if (!old_dir->i_op->rename)
  return -EPERM;





 if (new_dir != old_dir) {
  if (is_dir) {
   error = inode_permission(source, MAY_WRITE);
   if (error)
    return error;
  }
  if ((flags & RENAME_EXCHANGE) && new_is_dir) {
   error = inode_permission(target, MAY_WRITE);
   if (error)
    return error;
  }
 }

 error = security_inode_rename(old_dir, old_dentry, new_dir, new_dentry,
          flags);
 if (error)
  return error;

 take_dentry_name_snapshot(&old_name, old_dentry);
 dget(new_dentry);
 if (!is_dir || (flags & RENAME_EXCHANGE))
  lock_two_nondirectories(source, target);
 else if (target)
  inode_lock(target);

 error = -EBUSY;
 if (is_local_mountpoint(old_dentry) || is_local_mountpoint(new_dentry))
  goto out;

 if (max_links && new_dir != old_dir) {
  error = -EMLINK;
  if (is_dir && !new_is_dir && new_dir->i_nlink >= max_links)
   goto out;
  if ((flags & RENAME_EXCHANGE) && !is_dir && new_is_dir &&
      old_dir->i_nlink >= max_links)
   goto out;
 }
 if (!is_dir) {
  error = try_break_deleg(source, delegated_inode);
  if (error)
   goto out;
 }
 if (target && !new_is_dir) {
  error = try_break_deleg(target, delegated_inode);
  if (error)
   goto out;
 }
 error = old_dir->i_op->rename(old_dir, old_dentry,
           new_dir, new_dentry, flags);
 if (error)
  goto out;

 if (!(flags & RENAME_EXCHANGE) && target) {
  if (is_dir) {
   shrink_dcache_parent(new_dentry);
   target->i_flags |= S_DEAD;
  }
  dont_mount(new_dentry);
  detach_mounts(new_dentry);
 }
 if (!(old_dir->i_sb->s_type->fs_flags & FS_RENAME_DOES_D_MOVE)) {
  if (!(flags & RENAME_EXCHANGE))
   d_move(old_dentry, new_dentry);
  else
   d_exchange(old_dentry, new_dentry);
 }
out:
 if (!is_dir || (flags & RENAME_EXCHANGE))
  unlock_two_nondirectories(source, target);
 else if (target)
  inode_unlock(target);
 dput(new_dentry);
 if (!error) {
  fsnotify_move(old_dir, new_dir, &old_name.name, is_dir,
         !(flags & RENAME_EXCHANGE) ? target : ((void*)0), old_dentry);
  if (flags & RENAME_EXCHANGE) {
   fsnotify_move(new_dir, old_dir, &old_dentry->d_name,
          new_is_dir, ((void*)0), new_dentry);
  }
 }
 release_dentry_name_snapshot(&old_name);

 return error;
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsmount {int dummy; } ;
struct timespec64 {int dummy; } ;
struct path {int dentry; struct vfsmount* mnt; } ;
struct inode {int i_sb; } ;


 int S_ATIME ;
 int __mnt_drop_write (struct vfsmount*) ;
 scalar_t__ __mnt_want_write (struct vfsmount*) ;
 int atime_needs_update (struct path const*,struct inode*) ;
 struct timespec64 current_time (struct inode*) ;
 struct inode* d_inode (int ) ;
 int sb_end_write (int ) ;
 int sb_start_write_trylock (int ) ;
 int update_time (struct inode*,struct timespec64*,int ) ;

void touch_atime(const struct path *path)
{
 struct vfsmount *mnt = path->mnt;
 struct inode *inode = d_inode(path->dentry);
 struct timespec64 now;

 if (!atime_needs_update(path, inode))
  return;

 if (!sb_start_write_trylock(inode->i_sb))
  return;

 if (__mnt_want_write(mnt) != 0)
  goto skip_update;
 now = current_time(inode);
 update_time(inode, &now, S_ATIME);
 __mnt_drop_write(mnt);
skip_update:
 sb_end_write(inode->i_sb);
}

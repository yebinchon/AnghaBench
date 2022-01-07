
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec64 {scalar_t__ tv_nsec; } ;
struct path {int mnt; TYPE_1__* dentry; } ;
struct inode {int dummy; } ;
struct iattr {int ia_valid; void* ia_mtime; void* ia_atime; } ;
struct TYPE_2__ {struct inode* d_inode; } ;


 int ATTR_ATIME ;
 int ATTR_ATIME_SET ;
 int ATTR_CTIME ;
 int ATTR_MTIME ;
 int ATTR_MTIME_SET ;
 int ATTR_TIMES_SET ;
 int ATTR_TOUCH ;
 scalar_t__ UTIME_NOW ;
 scalar_t__ UTIME_OMIT ;
 int break_deleg_wait (struct inode**) ;
 int inode_lock (struct inode*) ;
 int inode_unlock (struct inode*) ;
 int mnt_drop_write (int ) ;
 int mnt_want_write (int ) ;
 int notify_change (TYPE_1__*,struct iattr*,struct inode**) ;
 void* timestamp_truncate (struct timespec64,struct inode*) ;

__attribute__((used)) static int utimes_common(const struct path *path, struct timespec64 *times)
{
 int error;
 struct iattr newattrs;
 struct inode *inode = path->dentry->d_inode;
 struct inode *delegated_inode = ((void*)0);

 error = mnt_want_write(path->mnt);
 if (error)
  goto out;

 if (times && times[0].tv_nsec == UTIME_NOW &&
       times[1].tv_nsec == UTIME_NOW)
  times = ((void*)0);

 newattrs.ia_valid = ATTR_CTIME | ATTR_MTIME | ATTR_ATIME;
 if (times) {
  if (times[0].tv_nsec == UTIME_OMIT)
   newattrs.ia_valid &= ~ATTR_ATIME;
  else if (times[0].tv_nsec != UTIME_NOW) {
   newattrs.ia_atime = timestamp_truncate(times[0], inode);
   newattrs.ia_valid |= ATTR_ATIME_SET;
  }

  if (times[1].tv_nsec == UTIME_OMIT)
   newattrs.ia_valid &= ~ATTR_MTIME;
  else if (times[1].tv_nsec != UTIME_NOW) {
   newattrs.ia_mtime = timestamp_truncate(times[1], inode);
   newattrs.ia_valid |= ATTR_MTIME_SET;
  }





  newattrs.ia_valid |= ATTR_TIMES_SET;
 } else {
  newattrs.ia_valid |= ATTR_TOUCH;
 }
retry_deleg:
 inode_lock(inode);
 error = notify_change(path->dentry, &newattrs, &delegated_inode);
 inode_unlock(inode);
 if (delegated_inode) {
  error = break_deleg_wait(&delegated_inode);
  if (!error)
   goto retry_deleg;
 }

 mnt_drop_write(path->mnt);
out:
 return error;
}

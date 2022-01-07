
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock {scalar_t__ l_type; scalar_t__ l_pid; } ;
struct file_lock {scalar_t__ fl_type; struct file* fl_owner; int fl_flags; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int FL_OFDLCK ;
 unsigned int F_GETLK ;
 unsigned int F_OFD_GETLK ;
 scalar_t__ F_RDLCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int flock_to_posix_lock (struct file*,struct file_lock*,struct flock*) ;
 struct file_lock* locks_alloc_lock () ;
 int locks_free_lock (struct file_lock*) ;
 int posix_lock_to_flock (struct flock*,struct file_lock*) ;
 int vfs_test_lock (struct file*,struct file_lock*) ;

int fcntl_getlk(struct file *filp, unsigned int cmd, struct flock *flock)
{
 struct file_lock *fl;
 int error;

 fl = locks_alloc_lock();
 if (fl == ((void*)0))
  return -ENOMEM;
 error = -EINVAL;
 if (flock->l_type != F_RDLCK && flock->l_type != F_WRLCK)
  goto out;

 error = flock_to_posix_lock(filp, fl, flock);
 if (error)
  goto out;

 if (cmd == F_OFD_GETLK) {
  error = -EINVAL;
  if (flock->l_pid != 0)
   goto out;

  cmd = F_GETLK;
  fl->fl_flags |= FL_OFDLCK;
  fl->fl_owner = filp;
 }

 error = vfs_test_lock(filp, fl);
 if (error)
  goto out;

 flock->l_type = fl->fl_type;
 if (fl->fl_type != F_UNLCK) {
  error = posix_lock_to_flock(flock, fl);
  if (error)
   goto out;
 }
out:
 locks_free_lock(fl);
 return error;
}

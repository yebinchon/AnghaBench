
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct flock {int l_pid; } ;
struct file_lock {int fl_flags; scalar_t__ fl_type; struct file* fl_owner; } ;
struct file {int f_mapping; } ;
struct TYPE_4__ {TYPE_1__* files; } ;
struct TYPE_3__ {int file_lock; } ;


 int EAGAIN ;
 int EBADF ;
 int EINVAL ;
 int ENOLCK ;
 int FL_OFDLCK ;
 int FL_SLEEP ;


 unsigned int F_SETLK ;

 scalar_t__ F_UNLCK ;
 int WARN_ON_ONCE (int) ;
 int check_fmode_for_setlk (struct file_lock*) ;
 TYPE_2__* current ;
 int do_lock_file_wait (struct file*,unsigned int,struct file_lock*) ;
 struct file* fcheck (unsigned int) ;
 int flock_to_posix_lock (struct file*,struct file_lock*,struct flock*) ;
 struct file_lock* locks_alloc_lock () ;
 int locks_free_lock (struct file_lock*) ;
 struct inode* locks_inode (struct file*) ;
 scalar_t__ mandatory_lock (struct inode*) ;
 scalar_t__ mapping_writably_mapped (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_fcntl_setlk (struct inode*,struct file_lock*,int) ;

int fcntl_setlk(unsigned int fd, struct file *filp, unsigned int cmd,
  struct flock *flock)
{
 struct file_lock *file_lock = locks_alloc_lock();
 struct inode *inode = locks_inode(filp);
 struct file *f;
 int error;

 if (file_lock == ((void*)0))
  return -ENOLCK;




 if (mandatory_lock(inode) && mapping_writably_mapped(filp->f_mapping)) {
  error = -EAGAIN;
  goto out;
 }

 error = flock_to_posix_lock(filp, file_lock, flock);
 if (error)
  goto out;

 error = check_fmode_for_setlk(file_lock);
 if (error)
  goto out;





 switch (cmd) {
 case 130:
  error = -EINVAL;
  if (flock->l_pid != 0)
   goto out;

  cmd = F_SETLK;
  file_lock->fl_flags |= FL_OFDLCK;
  file_lock->fl_owner = filp;
  break;
 case 129:
  error = -EINVAL;
  if (flock->l_pid != 0)
   goto out;

  cmd = 128;
  file_lock->fl_flags |= FL_OFDLCK;
  file_lock->fl_owner = filp;

 case 128:
  file_lock->fl_flags |= FL_SLEEP;
 }

 error = do_lock_file_wait(filp, cmd, file_lock);






 if (!error && file_lock->fl_type != F_UNLCK &&
     !(file_lock->fl_flags & FL_OFDLCK)) {





  spin_lock(&current->files->file_lock);
  f = fcheck(fd);
  spin_unlock(&current->files->file_lock);
  if (f != filp) {
   file_lock->fl_type = F_UNLCK;
   error = do_lock_file_wait(filp, cmd, file_lock);
   WARN_ON_ONCE(error);
   error = -EBADF;
  }
 }
out:
 trace_fcntl_setlk(inode, file_lock, error);
 locks_free_lock(file_lock);
 return error;
}

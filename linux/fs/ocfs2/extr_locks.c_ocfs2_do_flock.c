
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_lock_res {int l_flags; scalar_t__ l_level; } ;
struct ocfs2_file_private {int fp_mutex; struct ocfs2_lock_res fp_flock; } ;
struct inode {int dummy; } ;
struct file_lock {scalar_t__ fl_type; int fl_flags; } ;
struct file {struct ocfs2_file_private* private_data; } ;


 int EAGAIN ;
 int EWOULDBLOCK ;
 int FL_FLOCK ;
 scalar_t__ F_UNLCK ;
 scalar_t__ F_WRLCK ;
 int IS_SETLKW (int) ;
 scalar_t__ LKM_EXMODE ;
 scalar_t__ LKM_NLMODE ;
 int OCFS2_LOCK_ATTACHED ;
 int locks_init_lock (struct file_lock*) ;
 int locks_lock_file_wait (struct file*,struct file_lock*) ;
 int mlog_errno (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ocfs2_file_lock (struct file*,int,int) ;
 int ocfs2_file_unlock (struct file*) ;

__attribute__((used)) static int ocfs2_do_flock(struct file *file, struct inode *inode,
     int cmd, struct file_lock *fl)
{
 int ret = 0, level = 0, trylock = 0;
 struct ocfs2_file_private *fp = file->private_data;
 struct ocfs2_lock_res *lockres = &fp->fp_flock;

 if (fl->fl_type == F_WRLCK)
  level = 1;
 if (!IS_SETLKW(cmd))
  trylock = 1;

 mutex_lock(&fp->fp_mutex);

 if (lockres->l_flags & OCFS2_LOCK_ATTACHED &&
     lockres->l_level > LKM_NLMODE) {
  int old_level = 0;
  struct file_lock request;

  if (lockres->l_level == LKM_EXMODE)
   old_level = 1;

  if (level == old_level)
   goto out;
  locks_init_lock(&request);
  request.fl_type = F_UNLCK;
  request.fl_flags = FL_FLOCK;
  locks_lock_file_wait(file, &request);

  ocfs2_file_unlock(file);
 }

 ret = ocfs2_file_lock(file, level, trylock);
 if (ret) {
  if (ret == -EAGAIN && trylock)
   ret = -EWOULDBLOCK;
  else
   mlog_errno(ret);
  goto out;
 }

 ret = locks_lock_file_wait(file, fl);
 if (ret)
  ocfs2_file_unlock(file);

out:
 mutex_unlock(&fp->fp_mutex);

 return ret;
}

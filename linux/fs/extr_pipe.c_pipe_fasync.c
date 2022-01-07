
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int fasync_readers; int fasync_writers; } ;
struct file {int f_mode; struct pipe_inode_info* private_data; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int __pipe_lock (struct pipe_inode_info*) ;
 int __pipe_unlock (struct pipe_inode_info*) ;
 int fasync_helper (int,struct file*,int,int *) ;

__attribute__((used)) static int
pipe_fasync(int fd, struct file *filp, int on)
{
 struct pipe_inode_info *pipe = filp->private_data;
 int retval = 0;

 __pipe_lock(pipe);
 if (filp->f_mode & FMODE_READ)
  retval = fasync_helper(fd, filp, on, &pipe->fasync_readers);
 if ((filp->f_mode & FMODE_WRITE) && retval >= 0) {
  retval = fasync_helper(fd, filp, on, &pipe->fasync_writers);
  if (retval < 0 && (filp->f_mode & FMODE_READ))

   fasync_helper(-1, filp, 0, &pipe->fasync_readers);
 }
 __pipe_unlock(pipe);
 return retval;
}

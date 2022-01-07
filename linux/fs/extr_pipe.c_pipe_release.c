
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int fasync_writers; int fasync_readers; int wait; scalar_t__ writers; scalar_t__ readers; } ;
struct inode {int dummy; } ;
struct file {int f_mode; struct pipe_inode_info* private_data; } ;


 int EPOLLERR ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLRDNORM ;
 int EPOLLWRNORM ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int POLL_IN ;
 int POLL_OUT ;
 int SIGIO ;
 int __pipe_lock (struct pipe_inode_info*) ;
 int __pipe_unlock (struct pipe_inode_info*) ;
 int kill_fasync (int *,int ,int ) ;
 int put_pipe_info (struct inode*,struct pipe_inode_info*) ;
 int wake_up_interruptible_sync_poll (int *,int) ;

__attribute__((used)) static int
pipe_release(struct inode *inode, struct file *file)
{
 struct pipe_inode_info *pipe = file->private_data;

 __pipe_lock(pipe);
 if (file->f_mode & FMODE_READ)
  pipe->readers--;
 if (file->f_mode & FMODE_WRITE)
  pipe->writers--;

 if (pipe->readers || pipe->writers) {
  wake_up_interruptible_sync_poll(&pipe->wait, EPOLLIN | EPOLLOUT | EPOLLRDNORM | EPOLLWRNORM | EPOLLERR | EPOLLHUP);
  kill_fasync(&pipe->fasync_readers, SIGIO, POLL_IN);
  kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
 }
 __pipe_unlock(pipe);

 put_pipe_info(inode, pipe);
 return 0;
}

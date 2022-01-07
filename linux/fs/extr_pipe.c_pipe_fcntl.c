
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {long buffers; } ;
struct file {int dummy; } ;


 long EBADF ;
 long EINVAL ;


 long PAGE_SIZE ;
 int __pipe_lock (struct pipe_inode_info*) ;
 int __pipe_unlock (struct pipe_inode_info*) ;
 struct pipe_inode_info* get_pipe_info (struct file*) ;
 long pipe_set_size (struct pipe_inode_info*,unsigned long) ;

long pipe_fcntl(struct file *file, unsigned int cmd, unsigned long arg)
{
 struct pipe_inode_info *pipe;
 long ret;

 pipe = get_pipe_info(file);
 if (!pipe)
  return -EBADF;

 __pipe_lock(pipe);

 switch (cmd) {
 case 128:
  ret = pipe_set_size(pipe, arg);
  break;
 case 129:
  ret = pipe->buffers * PAGE_SIZE;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 __pipe_unlock(pipe);
 return ret;
}

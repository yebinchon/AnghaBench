
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int waiting_writers; int writers; scalar_t__ nrbufs; } ;


 int EAGAIN ;
 int ERESTARTSYS ;
 unsigned int SPLICE_F_NONBLOCK ;
 int current ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int pipe_wait (struct pipe_inode_info*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static int ipipe_prep(struct pipe_inode_info *pipe, unsigned int flags)
{
 int ret;





 if (pipe->nrbufs)
  return 0;

 ret = 0;
 pipe_lock(pipe);

 while (!pipe->nrbufs) {
  if (signal_pending(current)) {
   ret = -ERESTARTSYS;
   break;
  }
  if (!pipe->writers)
   break;
  if (!pipe->waiting_writers) {
   if (flags & SPLICE_F_NONBLOCK) {
    ret = -EAGAIN;
    break;
   }
  }
  pipe_wait(pipe);
 }

 pipe_unlock(pipe);
 return ret;
}

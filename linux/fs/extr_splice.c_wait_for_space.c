
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {scalar_t__ nrbufs; scalar_t__ buffers; int waiting_writers; int readers; } ;


 int EAGAIN ;
 int EPIPE ;
 int ERESTARTSYS ;
 int SIGPIPE ;
 unsigned int SPLICE_F_NONBLOCK ;
 int current ;
 int pipe_wait (struct pipe_inode_info*) ;
 int send_sig (int ,int ,int ) ;
 scalar_t__ signal_pending (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int wait_for_space(struct pipe_inode_info *pipe, unsigned flags)
{
 for (;;) {
  if (unlikely(!pipe->readers)) {
   send_sig(SIGPIPE, current, 0);
   return -EPIPE;
  }
  if (pipe->nrbufs != pipe->buffers)
   return 0;
  if (flags & SPLICE_F_NONBLOCK)
   return -EAGAIN;
  if (signal_pending(current))
   return -ERESTARTSYS;
  pipe->waiting_writers++;
  pipe_wait(pipe);
  pipe->waiting_writers--;
 }
}

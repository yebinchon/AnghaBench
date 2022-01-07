
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int fasync_writers; int wait; } ;


 int POLL_OUT ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int smp_mb () ;
 scalar_t__ waitqueue_active (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wakeup_pipe_writers(struct pipe_inode_info *pipe)
{
 smp_mb();
 if (waitqueue_active(&pipe->wait))
  wake_up_interruptible(&pipe->wait);
 kill_fasync(&pipe->fasync_writers, SIGIO, POLL_OUT);
}

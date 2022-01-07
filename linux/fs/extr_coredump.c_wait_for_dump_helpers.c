
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int readers; int writers; int wait; int fasync_readers; } ;
struct file {struct pipe_inode_info* private_data; } ;


 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int pipe_lock (struct pipe_inode_info*) ;
 int pipe_unlock (struct pipe_inode_info*) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up_interruptible_sync (int *) ;

__attribute__((used)) static void wait_for_dump_helpers(struct file *file)
{
 struct pipe_inode_info *pipe = file->private_data;

 pipe_lock(pipe);
 pipe->readers++;
 pipe->writers--;
 wake_up_interruptible_sync(&pipe->wait);
 kill_fasync(&pipe->fasync_readers, SIGIO, POLL_IN);
 pipe_unlock(pipe);





 wait_event_interruptible(pipe->wait, pipe->readers == 1);

 pipe_lock(pipe);
 pipe->readers--;
 pipe->writers++;
 pipe_unlock(pipe);
}

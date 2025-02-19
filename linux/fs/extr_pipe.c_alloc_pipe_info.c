
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_struct {int dummy; } ;
struct pipe_inode_info {int r_counter; int w_counter; unsigned long buffers; int mutex; struct user_struct* user; int wait; scalar_t__ bufs; } ;
struct pipe_buffer {int dummy; } ;


 int CAP_SYS_RESOURCE ;
 int GFP_KERNEL_ACCOUNT ;
 unsigned int PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 unsigned long PIPE_DEF_BUFFERS ;
 unsigned int READ_ONCE (int ) ;
 unsigned long account_pipe_buffers (struct user_struct*,unsigned long,int) ;
 int capable (int ) ;
 int free_uid (struct user_struct*) ;
 struct user_struct* get_current_user () ;
 int init_waitqueue_head (int *) ;
 scalar_t__ is_unprivileged_user () ;
 scalar_t__ kcalloc (unsigned long,int,int ) ;
 int kfree (struct pipe_inode_info*) ;
 struct pipe_inode_info* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int pipe_max_size ;
 scalar_t__ too_many_pipe_buffers_hard (unsigned long) ;
 scalar_t__ too_many_pipe_buffers_soft (unsigned long) ;

struct pipe_inode_info *alloc_pipe_info(void)
{
 struct pipe_inode_info *pipe;
 unsigned long pipe_bufs = PIPE_DEF_BUFFERS;
 struct user_struct *user = get_current_user();
 unsigned long user_bufs;
 unsigned int max_size = READ_ONCE(pipe_max_size);

 pipe = kzalloc(sizeof(struct pipe_inode_info), GFP_KERNEL_ACCOUNT);
 if (pipe == ((void*)0))
  goto out_free_uid;

 if (pipe_bufs * PAGE_SIZE > max_size && !capable(CAP_SYS_RESOURCE))
  pipe_bufs = max_size >> PAGE_SHIFT;

 user_bufs = account_pipe_buffers(user, 0, pipe_bufs);

 if (too_many_pipe_buffers_soft(user_bufs) && is_unprivileged_user()) {
  user_bufs = account_pipe_buffers(user, pipe_bufs, 1);
  pipe_bufs = 1;
 }

 if (too_many_pipe_buffers_hard(user_bufs) && is_unprivileged_user())
  goto out_revert_acct;

 pipe->bufs = kcalloc(pipe_bufs, sizeof(struct pipe_buffer),
        GFP_KERNEL_ACCOUNT);

 if (pipe->bufs) {
  init_waitqueue_head(&pipe->wait);
  pipe->r_counter = pipe->w_counter = 1;
  pipe->buffers = pipe_bufs;
  pipe->user = user;
  mutex_init(&pipe->mutex);
  return pipe;
 }

out_revert_acct:
 (void) account_pipe_buffers(user, pipe_bufs, 0);
 kfree(pipe);
out_free_uid:
 free_uid(user);
 return ((void*)0);
}

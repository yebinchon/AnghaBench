
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int buffers; struct pipe_inode_info* bufs; scalar_t__ tmp_page; scalar_t__ ops; int user; } ;
struct pipe_buffer {int buffers; struct pipe_buffer* bufs; scalar_t__ tmp_page; scalar_t__ ops; int user; } ;


 int __free_page (scalar_t__) ;
 int account_pipe_buffers (int ,int,int ) ;
 int free_uid (int ) ;
 int kfree (struct pipe_inode_info*) ;
 int pipe_buf_release (struct pipe_inode_info*,struct pipe_inode_info*) ;

void free_pipe_info(struct pipe_inode_info *pipe)
{
 int i;

 (void) account_pipe_buffers(pipe->user, pipe->buffers, 0);
 free_uid(pipe->user);
 for (i = 0; i < pipe->buffers; i++) {
  struct pipe_buffer *buf = pipe->bufs + i;
  if (buf->ops)
   pipe_buf_release(pipe, buf);
 }
 if (pipe->tmp_page)
  __free_page(pipe->tmp_page);
 kfree(pipe->bufs);
 kfree(pipe);
}

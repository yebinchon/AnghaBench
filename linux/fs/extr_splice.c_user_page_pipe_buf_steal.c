
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int flags; } ;


 int PIPE_BUF_FLAG_GIFT ;
 int PIPE_BUF_FLAG_LRU ;
 int generic_pipe_buf_steal (struct pipe_inode_info*,struct pipe_buffer*) ;

__attribute__((used)) static int user_page_pipe_buf_steal(struct pipe_inode_info *pipe,
        struct pipe_buffer *buf)
{
 if (!(buf->flags & PIPE_BUF_FLAG_GIFT))
  return 1;

 buf->flags |= PIPE_BUF_FLAG_LRU;
 return generic_pipe_buf_steal(pipe, buf);
}

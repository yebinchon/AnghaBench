
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int page; } ;


 int put_page (int ) ;

void generic_pipe_buf_release(struct pipe_inode_info *pipe,
         struct pipe_buffer *buf)
{
 put_page(buf->page);
}

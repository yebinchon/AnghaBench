
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int dummy; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int private; int page; } ;


 scalar_t__ page_private (int ) ;
 int relay_consume_bytes (struct rchan_buf*,int ) ;

__attribute__((used)) static void relay_pipe_buf_release(struct pipe_inode_info *pipe,
       struct pipe_buffer *buf)
{
 struct rchan_buf *rbuf;

 rbuf = (struct rchan_buf *)page_private(buf->page);
 relay_consume_bytes(rbuf, buf->private);
}


typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {scalar_t__ private; } ;
struct buffer_ref {int dummy; } ;


 int buffer_ref_release (struct buffer_ref*) ;

__attribute__((used)) static void buffer_pipe_buf_release(struct pipe_inode_info *pipe,
        struct pipe_buffer *buf)
{
 struct buffer_ref *ref = (struct buffer_ref *)buf->private;

 buffer_ref_release(ref);
 buf->private = 0;
}

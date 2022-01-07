
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_buffer {int * ops; } ;


 int anon_pipe_buf_ops ;

__attribute__((used)) static bool pipe_buf_can_merge(struct pipe_buffer *buf)
{
 return buf->ops == &anon_pipe_buf_ops;
}

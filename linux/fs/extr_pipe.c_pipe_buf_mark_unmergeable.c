
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pipe_buffer {int * ops; } ;


 int anon_pipe_buf_nomerge_ops ;
 int anon_pipe_buf_ops ;

void pipe_buf_mark_unmergeable(struct pipe_buffer *buf)
{
 if (buf->ops == &anon_pipe_buf_ops)
  buf->ops = &anon_pipe_buf_nomerge_ops;
}

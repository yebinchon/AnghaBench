
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer {int * data; int * buffer; } ;


 int free_percpu (int *) ;
 int ring_buffer_free (int *) ;

__attribute__((used)) static void free_trace_buffer(struct trace_buffer *buf)
{
 if (buf->buffer) {
  ring_buffer_free(buf->buffer);
  buf->buffer = ((void*)0);
  free_percpu(buf->data);
  buf->data = ((void*)0);
 }
}

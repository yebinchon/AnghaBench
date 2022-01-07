
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_buffer_struct {int nesting; char** buffer; } ;


 int barrier () ;
 struct trace_buffer_struct* this_cpu_ptr (int ) ;
 int trace_percpu_buffer ;

__attribute__((used)) static char *get_trace_buf(void)
{
 struct trace_buffer_struct *buffer = this_cpu_ptr(trace_percpu_buffer);

 if (!buffer || buffer->nesting >= 4)
  return ((void*)0);

 buffer->nesting++;


 barrier();
 return &buffer->buffer[buffer->nesting][0];
}

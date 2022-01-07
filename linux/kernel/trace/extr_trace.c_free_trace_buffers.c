
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int max_buffer; int trace_buffer; } ;


 int free_trace_buffer (int *) ;

__attribute__((used)) static void free_trace_buffers(struct trace_array *tr)
{
 if (!tr)
  return;

 free_trace_buffer(&tr->trace_buffer);




}

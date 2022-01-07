
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * data; int * buffer; } ;
struct trace_array {int allocated_snapshot; TYPE_1__ trace_buffer; TYPE_1__ max_buffer; } ;


 int ENOMEM ;
 scalar_t__ WARN_ON (int) ;
 int allocate_snapshot ;
 int allocate_trace_buffer (struct trace_array*,TYPE_1__*,int) ;
 int free_percpu (int *) ;
 int ring_buffer_free (int *) ;

__attribute__((used)) static int allocate_trace_buffers(struct trace_array *tr, int size)
{
 int ret;

 ret = allocate_trace_buffer(tr, &tr->trace_buffer, size);
 if (ret)
  return ret;
 return 0;
}

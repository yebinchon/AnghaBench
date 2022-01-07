
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int data; int buffer; } ;
struct trace_array {int flags; TYPE_2__ trace_buffer; TYPE_2__ max_buffer; TYPE_1__* current_trace; } ;
struct TYPE_8__ {unsigned long entries; } ;
struct TYPE_6__ {int use_max_tr; } ;


 int RING_BUFFER_ALL_CPUS ;
 int TRACE_ARRAY_FL_GLOBAL ;
 int WARN_ON (int) ;
 TYPE_5__* per_cpu_ptr (int ,int) ;
 int resize_buffer_duplicate_size (TYPE_2__*,TYPE_2__*,int) ;
 int ring_buffer_expanded ;
 int ring_buffer_resize (int ,unsigned long,int) ;
 int set_buffer_entries (TYPE_2__*,unsigned long) ;
 int tracing_disabled ;

__attribute__((used)) static int __tracing_resize_ring_buffer(struct trace_array *tr,
     unsigned long size, int cpu)
{
 int ret;






 ring_buffer_expanded = 1;


 if (!tr->trace_buffer.buffer)
  return 0;

 ret = ring_buffer_resize(tr->trace_buffer.buffer, size, cpu);
 if (ret < 0)
  return ret;
 if (cpu == RING_BUFFER_ALL_CPUS)
  set_buffer_entries(&tr->trace_buffer, size);
 else
  per_cpu_ptr(tr->trace_buffer.data, cpu)->entries = size;

 return ret;
}

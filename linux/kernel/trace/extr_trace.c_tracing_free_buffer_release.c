
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int trace_flags; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int dummy; } ;


 int RING_BUFFER_ALL_CPUS ;
 int TRACE_ITER_STOP_ON_FREE ;
 int trace_array_put (struct trace_array*) ;
 int tracer_tracing_off (struct trace_array*) ;
 int tracing_resize_ring_buffer (struct trace_array*,int ,int ) ;

__attribute__((used)) static int
tracing_free_buffer_release(struct inode *inode, struct file *filp)
{
 struct trace_array *tr = inode->i_private;


 if (tr->trace_flags & TRACE_ITER_STOP_ON_FREE)
  tracer_tracing_off(tr);

 tracing_resize_ring_buffer(tr, 0, RING_BUFFER_ALL_CPUS);

 trace_array_put(tr);

 return 0;
}

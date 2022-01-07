
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RING_BUFFER_ALL_CPUS ;
 int __tracing_resize_ring_buffer (int *,int ,int ) ;
 int global_trace ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int ring_buffer_expanded ;
 int trace_buf_size ;
 int trace_types_lock ;

int tracing_update_buffers(void)
{
 int ret = 0;

 mutex_lock(&trace_types_lock);
 if (!ring_buffer_expanded)
  ret = __tracing_resize_ring_buffer(&global_trace, trace_buf_size,
      RING_BUFFER_ALL_CPUS);
 mutex_unlock(&trace_types_lock);

 return ret;
}

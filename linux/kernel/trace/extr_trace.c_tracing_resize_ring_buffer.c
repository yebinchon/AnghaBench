
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 int ENOMEM ;
 int RING_BUFFER_ALL_CPUS ;
 int __tracing_resize_ring_buffer (struct trace_array*,unsigned long,int) ;
 int cpumask_test_cpu (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_types_lock ;
 int tracing_buffer_mask ;

__attribute__((used)) static ssize_t tracing_resize_ring_buffer(struct trace_array *tr,
       unsigned long size, int cpu_id)
{
 int ret = size;

 mutex_lock(&trace_types_lock);

 if (cpu_id != RING_BUFFER_ALL_CPUS) {

  if (!cpumask_test_cpu(cpu_id, tracing_buffer_mask)) {
   ret = -EINVAL;
   goto out;
  }
 }

 ret = __tracing_resize_ring_buffer(tr, size, cpu_id);
 if (ret < 0)
  ret = -ENOMEM;

out:
 mutex_unlock(&trace_types_lock);

 return ret;
}

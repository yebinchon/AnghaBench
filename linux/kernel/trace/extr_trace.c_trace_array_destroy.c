
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int EINVAL ;
 int __remove_instance (struct trace_array*) ;
 int event_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_types_lock ;

int trace_array_destroy(struct trace_array *tr)
{
 int ret;

 if (!tr)
  return -EINVAL;

 mutex_lock(&event_mutex);
 mutex_lock(&trace_types_lock);

 ret = __remove_instance(tr);

 mutex_unlock(&trace_types_lock);
 mutex_unlock(&event_mutex);

 return ret;
}

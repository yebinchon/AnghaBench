
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_func {void* data; void* func; } ;
struct tracepoint {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tracepoint_remove_func (struct tracepoint*,struct tracepoint_func*) ;
 int tracepoints_mutex ;

int tracepoint_probe_unregister(struct tracepoint *tp, void *probe, void *data)
{
 struct tracepoint_func tp_func;
 int ret;

 mutex_lock(&tracepoints_mutex);
 tp_func.func = probe;
 tp_func.data = data;
 ret = tracepoint_remove_func(tp, &tp_func);
 mutex_unlock(&tracepoints_mutex);
 return ret;
}

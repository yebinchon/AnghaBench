
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_func {int prio; void* data; void* func; } ;
struct tracepoint {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tracepoint_add_func (struct tracepoint*,struct tracepoint_func*,int) ;
 int tracepoints_mutex ;

int tracepoint_probe_register_prio(struct tracepoint *tp, void *probe,
       void *data, int prio)
{
 struct tracepoint_func tp_func;
 int ret;

 mutex_lock(&tracepoints_mutex);
 tp_func.func = probe;
 tp_func.data = data;
 tp_func.prio = prio;
 ret = tracepoint_add_func(tp, &tp_func, prio);
 mutex_unlock(&tracepoints_mutex);
 return ret;
}

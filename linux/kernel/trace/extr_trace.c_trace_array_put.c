
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int __trace_array_put (struct trace_array*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_types_lock ;

void trace_array_put(struct trace_array *this_tr)
{
 mutex_lock(&trace_types_lock);
 __trace_array_put(this_tr);
 mutex_unlock(&trace_types_lock);
}

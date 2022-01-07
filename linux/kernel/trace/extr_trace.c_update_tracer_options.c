
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int dummy; } ;


 int __update_tracer_options (struct trace_array*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int trace_types_lock ;

__attribute__((used)) static void update_tracer_options(struct trace_array *tr)
{
 mutex_lock(&trace_types_lock);
 __update_tracer_options(tr);
 mutex_unlock(&trace_types_lock);
}

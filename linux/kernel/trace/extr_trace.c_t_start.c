
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void tracer ;
struct trace_array {int dummy; } ;
struct seq_file {struct trace_array* private; } ;
typedef scalar_t__ loff_t ;


 void* get_tracer_for_array (struct trace_array*,int ) ;
 int mutex_lock (int *) ;
 void* t_next (struct seq_file*,void*,scalar_t__*) ;
 int trace_types ;
 int trace_types_lock ;

__attribute__((used)) static void *t_start(struct seq_file *m, loff_t *pos)
{
 struct trace_array *tr = m->private;
 struct tracer *t;
 loff_t l = 0;

 mutex_lock(&trace_types_lock);

 t = get_tracer_for_array(tr, trace_types);
 for (; t && l < *pos; t = t_next(m, t, &l))
   ;

 return t;
}

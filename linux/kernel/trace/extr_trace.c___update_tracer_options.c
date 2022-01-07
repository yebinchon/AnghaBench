
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {struct tracer* next; } ;
struct trace_array {int dummy; } ;


 int add_tracer_options (struct trace_array*,struct tracer*) ;
 struct tracer* trace_types ;

__attribute__((used)) static void __update_tracer_options(struct trace_array *tr)
{
 struct tracer *t;

 for (t = trace_types; t; t = t->next)
  add_tracer_options(tr, t);
}

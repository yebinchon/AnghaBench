
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {struct tracer* next; } ;
struct trace_array {int dummy; } ;


 int trace_ok_for_array (struct tracer*,struct trace_array*) ;

__attribute__((used)) static struct tracer *
get_tracer_for_array(struct trace_array *tr, struct tracer *t)
{
 while (t && !trace_ok_for_array(t, tr))
  t = t->next;

 return t;
}

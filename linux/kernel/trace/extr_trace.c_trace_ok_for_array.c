
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {scalar_t__ allow_instances; } ;
struct trace_array {int flags; } ;


 int TRACE_ARRAY_FL_GLOBAL ;

__attribute__((used)) static bool
trace_ok_for_array(struct tracer *t, struct trace_array *tr)
{
 return (tr->flags & TRACE_ARRAY_FL_GLOBAL) || t->allow_instances;
}

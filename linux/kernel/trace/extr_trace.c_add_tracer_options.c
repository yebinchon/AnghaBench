
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracer {int dummy; } ;
struct trace_array {int dir; } ;


 int create_trace_option_files (struct trace_array*,struct tracer*) ;

__attribute__((used)) static void add_tracer_options(struct trace_array *tr, struct tracer *t)
{

 if (!tr->dir)
  return;

 create_trace_option_files(tr, t);
}

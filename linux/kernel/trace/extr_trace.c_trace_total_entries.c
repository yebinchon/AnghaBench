
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_array {int trace_buffer; } ;


 int get_total_entries (int *,unsigned long*,unsigned long*) ;
 struct trace_array global_trace ;

unsigned long trace_total_entries(struct trace_array *tr)
{
 unsigned long total, entries;

 if (!tr)
  tr = &global_trace;

 get_total_entries(&tr->trace_buffer, &total, &entries);

 return entries;
}

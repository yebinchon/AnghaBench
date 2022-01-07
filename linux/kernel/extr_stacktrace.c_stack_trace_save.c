
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stack_trace {unsigned long* entries; unsigned int max_entries; unsigned int skip; unsigned int nr_entries; } ;


 int save_stack_trace (struct stack_trace*) ;

unsigned int stack_trace_save(unsigned long *store, unsigned int size,
         unsigned int skipnr)
{
 struct stack_trace trace = {
  .entries = store,
  .max_entries = size,
  .skip = skipnr + 1,
 };

 save_stack_trace(&trace);
 return trace.nr_entries;
}

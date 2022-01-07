
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_TRACE ;
 int stack_trace_save (unsigned long*,int ,int) ;

__attribute__((used)) static int __save_stack_trace(unsigned long *trace)
{
 return stack_trace_save(trace, MAX_TRACE, 2);
}
